{-
fib :: Int -> [Int]
fib n = fibIter n 0 1 [1] 

fibIter :: Int -> Int -> Int -> [Int] -> [Int]
fibIter n total counter listV
    | n == 0       = listV
    | otherwise    = fibIter (n - 1) counter (counter + total) (counter + total:listV)
-}

fib :: [Int]
fib = fibIter 0 1 [1] 

fibIter :: Int -> Int -> [Int] -> [Int]
fibIter total counter listV
    | counter > 4000000 = listV
    | otherwise         = fibIter counter (counter + total) (counter + total:listV)

totalofAllFib :: Int
totalofAllFib = sum $ filter even fib
