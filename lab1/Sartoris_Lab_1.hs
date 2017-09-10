-- Hayden Sartoris
-- CMSC 305, Lab 1
-- Due: Thursday, September 13th, 2017

addBetweenTail::Integer -> Integer -> Integer -> Integer
addBetweenTail k n acc | k > n = 0
addBetweenTail k n acc | k == n = acc
addBetweenTail k n acc = addBetweenTail (1 + k) n (acc +  k)

addBetween::Integer -> Integer -> Integer
addBetween a b | a > b = 0
addBetween a b | b == a = a
addBetween a b = a + (addBetween (a+1) b)

addAll::Integer -> Integer
addAll a = (addBetween 1 a)

addDivisors::Integer -> Integer -> Integer
addDivisors a b | a == b = 0
addDivisors a b | ((rem b a) == 0) = a + (addDivisors (a+1) b)
addDivisors a b = (addDivisors (a+1) b)

perfectNumber::Integer -> Bool
perfectNumber n | n < 0 = False
perfectNumber n = ((addDivisors 1 n) == n)

twaalfskill::Integer -> Integer
twaalfskill n | n == 1 = 2
twaalfskill n | n == 2 = 5
twaalfskill n = (twaalfskill (n-1)) + (2 * (twaalfskill (n-2)))
