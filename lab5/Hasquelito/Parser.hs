module Main where
import Grammar
import Lexer

main = do
  s <- getContents
  let ast = parseHasquelito (scanTokens s)
  print ast  