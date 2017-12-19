{
-- Hayden Sartoris
-- CMSC 305, Lab 5

-- Due: Thursday, November 16, 2017

module Grammar where
import Lexer
}

%name parseHasquelito
%tokentype {Token}
%error {parserError}

%token
    boolval {BOOLVAL $$}
    intval  {INTVAL $$}
    if      {IF}
    then    {THEN}
    else    {ELSE}
    let     {LET}
    '='     {BIND}
    in      {IN}
    lambda  {LAMBDA}
    '->'    {ARROW}
    '::'    {COLONS}
    '=='    {EQUALS}
    '&&'    {AND}
    '||'    {OR}
    '+'     {PLUS}
    '-'     {MINUS}
    '*'     {TIMES}
    quot    {QUOT}
    rem     {REM}
    '<='    {LTEQ}
    '>='    {GTEQ}
    '/='    {NOTEQ}
    '<'     {Lexer.LT}
    '>'     {Lexer.GT}
    bool    {BOOL}
    int     {INT}
    '('     {LPAREN}
    ')'     {RPAREN}
    var     {VAR $$}
%nonassoc bool int '('
%right '->'
%right if else let in then lambda
%nonassoc boolval intval var
%right '||'
%right '&&'
%nonassoc '==' '/=' '<' '<=' '>' '>='
%left NEG
%left '+' '-'
%left SUB
%left '*'
%left APP
%left quot rem

%%
--TODO: function application, gteq, lteq
AST :
    boolval                     {Boolean $1}
    | intval                    {Integer $1}
    | AST AST %prec APP			{App $1 $2}
    | let var '=' AST in AST    {Let $2 $4 $6}
    | if AST then AST else AST  {If $2 $4 $6}
    | '(' lambda var '->' AST ')' '::' TypeExp '->' TypeExp {Lambda $3 $5 $8 $10}
    | AST '&&' AST              {And $1 $3}
    | AST '||' AST              {Or $1 $3}
    | AST '+' AST               {Plus $1 $3}
    | '-' AST %prec NEG			{Minus (Integer 0) $2}
    | AST '-' AST               {Minus $1 $3}
    | '-' AST '-' AST %prec SUB {Minus (Minus (Integer 0) $2) $4}
    | '-' AST '+' AST %prec SUB	{Plus  (Minus (Integer 0) $2) $4}
    | AST '*' AST               {Times $1 $3}
    | AST '==' AST              {Equals $1 $3}
    | AST '>=' AST              {Or (Gt $1 $3) (Equals $1 $3)}
    | AST '<=' AST              {Or (Lt $1 $3) (Equals $1 $3)}
    | AST '/=' AST              {Or (Gt $1 $3) (Lt $1 $3)}
    | AST '>' AST               {Gt $1 $3}
    | AST '<' AST               {Lt $1 $3}
    | quot AST AST              {Quot $2 $3}
    | rem AST AST               {Rem $2 $3}
    | var                       {Variable $1}
    | '(' AST ')'               {$2}

TypeExp :
    bool        				{BoolType}
    | int       				{IntType}
    | TypeExp '->' TypeExp 		{Arrow $1 $3}
	| '(' TypeExp ')'			{$2}
{

parserError:: [Token] -> a
parserError _ = error "Parse Error"

data AST =
        Boolean Bool
        | Integer Int
        | Let String AST AST
        | If AST AST AST
        | Lambda String AST TypeExp TypeExp
        | App AST AST
        | And AST AST
        | Or AST AST
        | Plus AST AST
        | Minus AST AST
        | Times AST AST
        | Quot AST AST
        | Rem AST AST
        | Equals AST AST
        | Gt AST AST
        | Lt AST AST
        | Variable String
        deriving (Eq,Show)

data TypeExp =
        BoolType
        | IntType
        | Arrow TypeExp TypeExp
        deriving (Eq,Show)

}
