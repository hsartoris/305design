--let y = 3 in ((\x -> x == 1)::Int -> Bool y)

--let x = 5 in ((\y -> 3 + y):: Int -> Int x)

--let b = (3 == 7) in if b then 5 else 7

--let x = 5 in let x = False in if x then (not x) else x

--(\x -> (\y -> (\z -> if x then y else z):: Int -> Int)::Int -> Int -> Int):: Bool -> Int -> Int -> Int


let y = (\x -> x+1)::Int -> Int in y 3
--let f = (\y -> y 3) :: (Int -> Bool) -> Bool in (f (\x -> (x == 5)):: Int -> Bool)
