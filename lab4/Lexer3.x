{
-- Hayden Sartoris
-- CMSC 305, Lab 4
-- Due: Thursday, October 19, 2017
module Main (main) where
import Control.Monad.State
}

%wrapper "monad"

$digit = [0-9]    -- Digits
$alpha = [a-zA-Z] -- Alphabetic characters

tokens :-
<0>   $white+ ;
<0>   "--".*  ;
<0>   True      {\s -> BOOLVAL True}
<0>   False     {\s -> BOOLVAL False}
<0>   let       {\s -> LET}
<0>   in        {\s -> IN}
<0>   $digit+   {\s -> INTVAL (read s)}
<0>   if        {\s -> IF}
<0>   then      {\s -> THEN}
<0>   else      {\s -> ELSE}
<0>   \=        {\s -> BIND}
<0>   "->"      {\s -> ARROW}
<0>   "::"      {\s -> COLONS}
<0>   Int       {\s -> INT}
<0>   Bool      {\s -> BOOL}
<0>   "=="      {\s -> EQUALS}
<0>   "&&"      {\s -> AND}
<0>   "||"      {\s -> OR}
<0>   \+        {\s -> PLUS}
<0>   \-        {\s -> MINUS}
<0>   \*        {\s -> TIMES}
<0>   \/        {\s -> QUOT}
<0>   \%        {\s -> REM}
<0>   "<="      {\s -> LTEQ}
<0>   ">="      {\s -> GTEQ}
<0>   \<        {\s -> Main.LT}
<0>   \>        {\s -> Main.GT}
<0>   \(        {\s -> LPAREN}
<0>   \)        {\s -> RPAREN}
<0>   \\        {\s -> LAMBDA}
<string> \"     { begin string  }
<string> [^\"]  ;
<string> \"     { begin 0 }
<0>   $alpha+   {\s -> VAR s}

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
    | STRING String
    deriving (Eq,Show)

main = do
  s <- getContents
  let r = runAlex s alexMonadScan
  --print r
}
