addBetween:: Integer -> Integer -> Integer
addBetween k n | k > n = 0
addBetween k n | k == n = n
addBetween k n = k + addBetween (k-1) n

addBetweenTail:: Integer -> Integer -> Integer -> Integer
addBetweenTail k n acc | k > n = 0
addBetweenTail k n acc | k == n = acc + k
addBetweenTail k n acc = addBetweenTail (k-1) n (acc + k)
