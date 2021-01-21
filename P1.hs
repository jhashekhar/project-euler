-- multiples of 3 and 5 less than 1000

solution :: Int -> Int -> Int
solution x s = if x == 1 then s else subsol x s  
             where subsol x s
                        | rem x 3 == 0 = solution (x-1) (s+x)
                        | rem x 5 == 0 = solution (x-1) (s+x)
                        | otherwise    = solution (x-1) s  

