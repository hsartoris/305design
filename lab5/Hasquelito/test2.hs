--let x = 5 in ((\y -> 3 + y)::Int -> Int x)
--let b = (3 == 7) in if b then 5 else 7
--let x = 5 in let x = False in if x then (not x) else x
--(\x -> (\y -> (\z -> if x then y else z)::Int -> Int)::Int -> Int -> Int)::Bool -> Int -> Int -> Int
--let f = (\y -> y 3)::(Int -> Bool) -> Bool in (f (\x -> (x == 5)):: Int -> Bool)
let f = (\y -> y 1)::(Int -> Bool) -> Int in (f (\x -> (x == 5)):: Int -> Int)
