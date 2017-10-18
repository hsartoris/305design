{
-- Hayden Sartoris
-- CMSC 305, Lab 4
-- Due: Thursday, October 19, 2017
module Main (main) where
}

%wrapper "posn"

$digit = 0-9    -- Digits
$alpha = [a-zA-Z] -- Alphabetic characters



tokens :-
<0>   $white+ ;
<0>   "--".*  ;
<0>   True      {tok (\p s -> BOOLVAL p True)}
<0>   False     {tok (\p s -> BOOLVAL p False)}
<0>   let       {tok (\p s -> LET p)}
<0>   in        {tok (\p s -> IN p)}
<0>   $digit+   {tok (\p s -> INTVAL p (read s)}
<0>   if        {tok (\p s -> IF p)}
<0>   then      {tok (\p s -> THEN p)}
<0>   else      {tok (\p s -> ELSE p)}
<0>   \=        {tok (\p s -> BIND p)}
<0>   "->"      {tok (\p s -> ARROWS p)}
<0>   "::"      {tok (\p s -> COLONS p)}
<0>   Int       {tok (\p s -> INT p)}
<0>   Bool      {tok (\p s -> BOOL p)}
<0>   "=="      {tok (\p s -> EQUALS p)}
<0>   "&&"      {tok (\p s -> AND p)}
<0>   "||"      {tok (\p s -> OR p)}
<0>   \+        {tok (\p s -> PLUS p)}
<0>   \-        {tok (\p s -> MINUS p)}
<0>   \*        {tok (\p s -> TIMES p)}
<0>   \/        {tok (\p s -> QUOT p)}
<0>   \%        {tok (\p s -> REM p)}
<0>   "<="      {tok (\p s -> LTEQ p)}
<0>   ">="      {tok (\p s -> GTEQ p)}
<0>   \<        {tok (\p s -> Main.LT p)}
<0>   \>        {tok (\p s -> Main.GT p)}
<0>   \(        {tok (\p s -> LPAREN p)}
<0>   \)        {tok (\p s -> RPAREN p)}
<0>   \\        {tok (\p s -> LAMBDA p)}
<0>   \"        { begin string }
<string> [^\"]  { tok (\p s -> STRING p s)}
<string> \"     { begin 0 }
<0>   $alpha+   {tok (\p s -> VAR p s)} 
{

startcode := '<' string ',' comment '>'
tok f p s = f p s

-- The Token type
data Token =
    BOOLVAL AlexPosn Bool
    | INTVAL AlexPosn Int
    | IF AlexPosn
    | THEN AlexPosn
    | ELSE AlexPosn
    | LET AlexPosn
    | BIND AlexPosn
    | IN AlexPosn
    | LAMBDA AlexPosn
    | ARROW AlexPosn
    | COLONS AlexPosn
    | EQUALS AlexPosn
    | AND AlexPosn
    | OR AlexPosn
    | PLUS AlexPosn
    | MINUS AlexPosn
    | TIMES AlexPosn
    | QUOT AlexPosn
    | REM AlexPosn
    | LTEQ AlexPosn
    | GTEQ AlexPosn
    | NOTEQ AlexPosn
    | LT AlexPosn
    | GT AlexPosn
    | BOOL AlexPosn
    | INT AlexPosn
    | LPAREN AlexPosn
    | RPAREN AlexPosn
    | VAR AlexPosn String
    | STRING AlexPosn String
    deriving (Eq,Show)

token_posn (Token p) = p
token_posn (Token p _) = p

main = do
  s <- getContents
  print (alexScanTokens s)
}
