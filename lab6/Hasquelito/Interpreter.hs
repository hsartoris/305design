module Main where
import TypeChecker
import Grammar
import Lexer


main = do
  s <- getContents
  let ast = parseHasquelito (scanTokens s)
  let t = typeChecker ast [("not", (Arrow BoolType BoolType))]
  print (ast,t)  
