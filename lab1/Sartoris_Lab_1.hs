-- Hayden Sartoris
-- CMSC 305, Lab 1
-- Due: Thursday, September 13th, 2017

-- tail recursive addBetween function to avoid stack overflows
addBetweenTail::Integer -> Integer -> Integer -> Integer
addBetweenTail k n acc | k == n = acc
addBetweenTail k n acc = addBetweenTail (1 + k) n (acc +  k)

-- wrapper for addBetweenTail
addBetween::Integer -> Integer -> Integer
addBetween a b | a > b = -1 -- sanity check
addBetween a b = addBetweenTail a b 0

addAll::Integer -> Integer
addAll a = addBetween 1 a -- this could just be a call directly to addBetweenTail I guess

-- tail recursive addDivisors
addDivisorsTail::Integer -> Integer -> Integer -> Integer
addDivisorsTail k n acc | k == n = acc
addDivisorsTail k n acc | (rem n k) == 0 = addDivisorsTail (k+1) n (acc+k)
addDivisorsTail k n acc = addDivisorsTail (k+1) n acc

-- wrapper for addDivisorsTail
addDivisors::Integer -> Integer -> Integer
addDivisors k n | k > n = -1 -- sanity check
addDivisors k n = addDivisorsTail k n 0

perfectNumber::Integer -> Bool
perfectNumber n | n < 0 = False
perfectNumber n = ((addDivisors 1 n) == n)

-- not sure if this is the best way to do this or not
twaalfskill::Integer -> Integer
twaalfskill n | n == 1 = 2
twaalfskill n | n == 2 = 5
twaalfskill n = (twaalfskill (n-1)) + (2 * (twaalfskill (n-2)))
