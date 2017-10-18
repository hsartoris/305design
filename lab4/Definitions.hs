module Definitions where

import Control.Monad.State
import Control.Monad
import Data.Word
import qualified Data.Bits
import Data.Char (ord)

utf8Encode :: Char -> [Word8]
utf8Encode = map fromIntegral . go . ord
    where
        go oc
            | oc <= 0x7f        = [oc]

            | oc <= 0x7ff       = [ 0xc0 + (oc `Data.Bits.shiftR` 6)
                                , 0x80 + oc Data.Bits..&. 0x3f
                                ]

            | oc <= 0xffff      = [ 0xe0 + (oc `Data.Bits.shiftR` 12)
                                , 0x80 + ((oc `Data.Bits.shiftR` 6) Data.Bits..&. 0x3f)
                                , 0x80 + oc Data.Bits..&. 0x3f
                                ]
            | otherwise         = [ 0xf0 + (oc `Data.Bits.shiftR` 18)
                                , 0x80 + ((oc `Data.Bits.shiftR` 12) Data.Bits..&. 0x3f)
                                , 0x80 + ((oc `Data.Bits.shiftR` 6) Data.Bits..&. 0x3f)
                                , 0x80 + oc Data.Bits..&. 0x3f
                                ]

data AlexInput
    = AlexInput {
        prevChar::Char,
        bytes::[Word8],
        remain::String,
        line::Int,
        lineChar::Int}
    deriving Show

alexGetByte:: AlexInput -> Maybe (Word8, AlexInput)
alexGetByte a = case (bytes a) of
    (b:bts) -> Just (b, a {bytes=bts})
    [] -> case (remain a) of
        [] -> Nothing
        (c:str) ->  let n = (line a)
                        n' = if (c=='\n') then n+1 else n
                        lc' = if (c=='\n') then 0 else (lineChar a) + 1
                        (b:bs) = utf8Encode c
                    in Just (b, AlexInput { prevChar=c, bytes=bs, remain=str, line=n', lineChar=lc' })

alexInputPrevChar:: AlexInput -> Char
alexInputPrevChar (AlexInput {prevChar = c}) = c

data ParseState
    = ParseState {
        input::AlexInput,
        currState::Int,
        commentDepth::Int,
        buffer::String}
    deriving Show

init::String -> ParseState
init s = ParseState {
    input = AlexInput {
        prevChar = '\n',
        bytes = [],
        remain = s,
        line = 0,
        lineChar = 0},
    currState = 0,
    commentDepth = 0,
    buffer = ""}

type ParseMon a = State ParseState a

getLineNo::ParseMon Int
getLineNo = do
    s <- get
    return . line . input $ s

getCharNo::ParseMon Int
getCharNo = do
    s <- get
    return . lineChar . input $ s

evaluate:: ParseMon a -> String -> a
evaluate m s = evalState m (Definitions.init s)
