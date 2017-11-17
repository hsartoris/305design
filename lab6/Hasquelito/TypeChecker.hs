module TypeChecker where
import Grammar
import Lexer

-- Type alias for type environments.

type TypeEnv = [(String,TypeExp)]

-- Function for retrieving types of variables form the environment.

lookup::String -> [(String,a)] -> a
lookup s  []                    = error ("Type " ++ s ++ " not defined in the current environment")
lookup s1 ((s2,t):l) | s1 == s2 = t
lookup s  (_:l)                 = TypeChecker.lookup s l

typeCheckBin:: TypeExp -> TypeExp -> String -> TypeExp -> TypeExp
typeCheckBin t1 t2 _ tType | (t1 == tType) && (t2 == tType) = tType
typeCheckBin t1 _ op tType | t1 == tType = error("Second argument of '" ++ op ++ "' must be of type " ++ (show tType))
typeCheckBin _ t2 op tType | t2 == tType = error("First argument of '" ++ op ++ "' must be of type " ++ (show tType))
typeCheckBin _ _  op tType = error("Arguments to '" ++ op ++ "' must be of type " ++ (show tType))

typeCheckPred:: AST -> AST -> TypeEnv -> String -> TypeExp
typeCheckPred ast1 ast2 env op | (typeChecker ast1 env) == (typeChecker ast2 env) = BoolType
typeCheckPred _ _ _ op = error("Arguments to '" ++ op ++ "' must be of the same type")


-- Please complete the definition of typeChecker for the rest of the abstract syntax.
typeChecker:: AST -> TypeEnv -> TypeExp
typeChecker (Boolean _) _ = BoolType
typeChecker (Integer _) _ = IntType
typeChecker (Variable s) env = TypeChecker.lookup s env

typeChecker (Plus ast1 ast2) env = typeCheckBin (typeChecker ast1 env) (typeChecker ast2 env) "+" IntType
typeChecker (Minus ast1 ast2) env = typeCheckBin (typeChecker ast1 env) (typeChecker ast2 env) "-" IntType
typeChecker (Times ast1 ast2) env = typeCheckBin (typeChecker ast1 env) (typeChecker ast2 env) "*" IntType
typeChecker (Quot ast1 ast2) env = typeCheckBin (typeChecker ast1 env) (typeChecker ast2 env) "quot" IntType
typeChecker (Rem ast1 ast2) env = typeCheckBin (typeChecker ast1 env) (typeChecker ast2 env) "rem" IntType

typeChecker (And ast1 ast2) env = typeCheckBin (typeChecker ast1 env) (typeChecker ast2 env) "&&" BoolType
typeChecker (Or ast1 ast2) env = typeCheckBin (typeChecker ast1 env) (typeChecker ast2 env) "||" BoolType

typeChecker (Equals ast1 ast2) env = typeCheckPred ast1 ast2 env "=="
typeChecker (Gt ast1 ast2) env = typeCheckPred ast1 ast2 env ">"
typeChecker (Lt ast1 ast2) env = typeCheckPred ast1 ast2 env "<"

typeChecker (If ast1 ast2 ast3) env | (typeChecker ast1 env == BoolType) && (typeChecker ast2 env) == (typeChecker ast3 env) = typeChecker ast2 env
typeChecker (If ast1 ast2 ast3) env | (typeChecker ast1 env == BoolType) = error("Type '" ++ (show (typeChecker ast2 env)) ++ "' does not match type '" ++ (show (typeChecker ast3 env)) ++ "'")
typeChecker (If _ _ _) _ = error("Non-boolean expression in 'if'")

typeChecker (Let var val exp) env = typeChecker exp ((var, typeChecker val env):env)
