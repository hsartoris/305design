value = 6

fact :: Integer -> Integer
fact n | n <= 0 = 1
fact n = n * (fact (n-1))


sum:: [Integer] -> Integer
sum [] = 0
sum (a:l) = a + (Main.sum l)

member :: Integer -> [Integer] -> Bool
member item [] = False
member item (a:l) = (item == a) || (member a l)


map :: (Integer -> Integer) -> [Integer] -> [Integer]
map f [] = []
map f (a:l) = (f a):(Main.map f l)
