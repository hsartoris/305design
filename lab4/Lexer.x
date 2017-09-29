{
-- Hayden Sartoris
-- CMSC 305, Lab 4
-- Due: Thursday, October 19, 2017
module Main (main) where
}

%wrapper "basic"

$digit = [0-9]    -- Digits
$alpha = [a-zA-Z] -- Alphabetic characters

tokens :-
  $white+ ;
  "--".*  ;
  True      {\s -> BOOLVAL True}
  False     {\s -> BOOLVAL False}
  let       {\s -> LET}
  in        {\s -> IN}
  $digit+   {\s -> INTVAL (read s)}
  if        {\s -> IF}
  then      {\s -> THEN}
  else      {\s -> ELSE}
  \=        {\s -> BIND}
  "->"      {\s -> ARROW}
  "::"      {\s -> COLONS}
  Int       {\s -> INT}
  Bool      {\s -> BOOL}
  "=="      {\s -> EQUALS}
  "&&"      {\s -> AND}
  "||"      {\s -> OR}
  \+        {\s -> PLUS}
  \-        {\s -> MINUS}
  \*        {\s -> TIMES}
  \/        {\s -> QUOT}
  \%        {\s -> REM}
  "<="      {\s -> LTEQ}
  ">="      {\s -> GTEQ}
  \<        {\s -> Main.LT}
  \>        {\s -> Main.GT}
  \(        {\s -> LPAREN}
  \)        {\s -> RPAREN}
  \\        {\s -> LAMBDA}
  $alpha+   {\s -> VAR s}
{

-- The Token type
data Token =
    BOOLVAL Bool
    | INTVAL Int
    | IF
    | THEN
    | ELSE
    | LET
    | BIND
    | IN
    | LAMBDA
    | ARROW
    | COLONS
    | EQUALS
    | AND
    | OR
    | PLUS
    | MINUS
    | TIMES
    | QUOT
    | REM
    | LTEQ
    | GTEQ
    | NOTEQ
    | LT
    | GT
    | BOOL
    | INT
    | LPAREN
    | RPAREN
    | VAR String
    deriving (Eq,Show)

main = do
  s <- getContents
  print (alexScanTokens s)
}
