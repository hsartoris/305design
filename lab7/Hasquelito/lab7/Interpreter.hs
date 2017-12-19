module Main where
import TypeChecker
import Grammar
import Lexer

type OpEnv = [(String,AST)]

-- (remove_var x sigma) computes sigma_x.

remove_var:: String -> OpEnv -> OpEnv
remove_var x [] = []
remove_var x ((y,_):env) | x == y =
    remove_var x env
remove_var x ((y,ast):env) =
    (y,ast) : remove_var x env

-- Substitute an AST for a variable in an AST.

subst_var:: String -> AST -> AST -> AST
subst_var _ _ (Boolean b) = Boolean b
subst_var _ _ (Integer n) = Integer n
subst_var x e (Variable v) | x == v = e
subst_var x e (Variable v) = Variable v
subst_var x e (Plus ast1 ast2) =
    Plus (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Minus ast1 ast2) =
    Minus (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Times ast1 ast2) =
    Times (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Rem ast1 ast2) =
    Rem (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Quot ast1 ast2) =
    Quot (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (And ast1 ast2) =
    And (subst_var x e ast1) (subst_var x e ast2)
--subst_var x e (Not ast) =
--    Not (subst_var x e ast)
subst_var x e (Or ast1 ast2) =
    Or (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Equals ast1 ast2) =
    Equals (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Lt ast1 ast2) =
    Lt (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Gt ast1 ast2) =
    Gt (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (App ast1 ast2) =
    App (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (If ast1 ast2 ast3) =
    If (subst_var x e ast1) (subst_var x e ast2) (subst_var x e ast3)
subst_var x e (Let y ast1 ast2) | y == x =
    Let y (subst_var x e ast1) ast2
subst_var x e (Let y ast1 ast2) =
    Let y (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Lambda y ast t1 t2) | x == y =
    Lambda y ast t1 t2
subst_var x e (Lambda y ast t1 t2) =
    Lambda y (subst_var x e ast) t1 t2

-- Treat an environment as a variable substitution.

subst:: OpEnv -> AST -> AST
subst [] ast = ast
subst ((x,e):env) ast =
    subst env (subst_var x e ast)

-- Please complete the definition of interpreter.
int:: AST -> Int
int (Integer n) = n

bool:: AST -> Bool
bool (Boolean b) = b

orOp:: AST -> AST -> OpEnv -> AST
orOp ast1 _ env | bool(interpreter ast1 env) == True = Boolean True
orOp _ ast2 env = interpreter ast2 env

andOp:: AST -> AST -> OpEnv -> AST
andOp ast1 _ env | bool(interpreter ast1 env) == False = Boolean False
andOp _ ast2 env = interpreter ast2 env

intOp:: (Int -> Int -> Int) -> AST -> AST -> OpEnv -> AST
intOp op ast1 ast2 env = Integer (op (int (interpreter ast1 env)) (int (interpreter ast2 env)))

equals:: AST -> AST -> AST
equals (Integer a) (Integer b) = Boolean (a == b)
equals (Boolean a) (Boolean b) = Boolean (a == b)

gt:: AST -> AST -> AST
gt (Integer a) (Integer b) = Boolean (a > b)
gt (Boolean a) (Boolean b) = Boolean (a > b)

lt:: AST -> AST -> AST
lt (Integer a) (Integer b) = Boolean (a < b)
lt (Boolean a) (Boolean b) = Boolean (a < b)

interpreter:: AST -> OpEnv -> AST
interpreter (Boolean b) _ = Boolean b
interpreter (Integer n) _ = Integer n
interpreter (Variable v) env = let e = TypeChecker.lookup v env in interpreter e env
interpreter (Plus ast1 ast2) env 	= intOp (+) ast1 ast2 env
interpreter (Minus ast1 ast2) env 	= intOp (-) ast1 ast2 env
interpreter (Times ast1 ast2) env	= intOp (*) ast1 ast2 env
interpreter (Quot ast1 ast2) env	= intOp quot ast1 ast2 env
interpreter (Rem ast1 ast2) env		= intOp rem ast1 ast2 env
interpreter (Or ast1 ast2) env 		= orOp ast1 ast2 env
interpreter (And ast1 ast2) env		= andOp ast1 ast2 env
interpreter (Equals ast1 ast2) env 	= equals (interpreter ast1 env) (interpreter ast2 env)
interpreter (Gt ast1 ast2) env 		= gt (interpreter ast1 env) (interpreter ast2 env)
interpreter (Lt ast1 ast2) env		= lt (interpreter ast1 env) (interpreter ast2 env)
interpreter (If ast1 ast2 ast3) env	= if bool (interpreter ast1 env) then (interpreter ast2 env) else (interpreter ast3 env)
interpreter (Let s ast1 ast2) env 	= interpreter ast2 ((s, (subst env ast1)):env)
interpreter (Lambda x ast1 type1 type2) env = (Lambda x (subst (remove_var x env) ast1) type1 type2)
interpreter (App ast1 ast2) env 	= let (Lambda x e type1 type2) = interpreter ast1 env in interpreter e ((x, (subst env ast2)):env)


main = do
  s <- getContents
  let ast = parseHasquelito (scanTokens s)
  let t = typeChecker ast [("not", (Arrow BoolType BoolType))]
  let val = interpreter ast [("not", Lambda "b" (If (Variable "b") (Boolean False) (Boolean True)) BoolType BoolType)]
  --print(ast,t)
  print (ast,t,val)  
