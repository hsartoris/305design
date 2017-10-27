-- Hayden Sartoris
-- CMSC 305, Lab 2
-- Due: Thursday, September 28th, 2017

--last_k :: Integer -> [Integer] -> [Integer]
--last_k _ [] = []
--last_k k ls | k < 1 = []
--last_k 1 ls = ls
--last_k k (_:ls) = last_k (k-1) ls

last_k :: Integer -> [Integer] -> [Integer]
last_k 1 ls = ls
last_k n (_:ls) = last_k (n-1) ls

first_n :: Integer -> [Integer] -> [Integer]
first_n 0 _ = []
first_n n (h:ls) = h:(first_n (n-1) ls)

multTail :: Integer -> [Integer] -> Integer
multTail k ls | (length ls) == 0 = k
multTail k (h:ls) = multTail (k*h) ls

mult :: [Integer] -> Integer
mult [] = 0
mult (h:ls) | (length ls) == 0 = h
mult (h:ls) | (length ls) == 1 = h * (head ls)
mult (h:ls) = multTail h ls

at :: Integer -> [Integer] -> Integer
at i ls | (length ls) == 0 = 0
at i ls | i == 1 = (head ls)
at i ls = at (i-1) (tail ls)

multiply_first_n :: Integer -> [Integer] -> Integer
multiply_first_n n ls | (length ls) == 0 = 0
multiply_first_n n ls | n <= 0 = 0
multiply_first_n n ls = mult (first_n n ls)

twaalfskill::Integer -> Integer
twaalfskill n | n == 1 = 2
twaalfskill n | n == 2 = 5
twaalfskill n = (twaalfskill (n-1)) + (2 * (twaalfskill (n-2)))

between_k_and_n :: Integer -> Integer -> [Integer] -> [Integer]
between_k_and_n k n ls | k > n = []
between_k_and_n k n ls = last_k k (first_n n ls)

multiply_between :: Integer -> Integer -> [Integer] -> Integer
multiply_between k n ls | k > n = 0
multiply_between k n ls | n <= 0 = 0
multiply_between k n ls | k == n = (at k ls)
--multiply_between k n ls | k == (n-1) = (at k ls) * (at n ls)
multiply_between k n ls = mult (between_k_and_n k n ls)

spreadTskill:: [Integer] -> [Integer] -> [Integer]
spreadTskill ls la | (length ls) == 0 = la
spreadTskill ls la = spreadTskill (tail ls) (la ++ [(twaalfskill (head ls))])

spreadTwaalfskill :: [Integer] -> [Integer]
spreadTwaalfskill ls = spreadTskill ls []
