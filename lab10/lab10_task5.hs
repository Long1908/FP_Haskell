car :: [Int] -> Int -- head
car [] = error "Empty list"
car (x:xs) = x

cdr :: [Int] -> [Int] -- tail
cdr [] = error "Empty list"
cdr (x:xs) = xs

consecutiveCounter :: [Int] -> Int -> Int
consecutiveCounter xs i
    |cdr xs == [] = i
    |car xs /= ((car $ (cdr xs)) - 1) = i
    |otherwise = consecutiveCounter (cdr xs) (i + 1) 

pack :: [Int] -> [[Int]]
pack xs
    |(xs == []) = []
    |otherwise = [take (consecutiveCounter xs 1) xs] ++ pack (drop (consecutiveCounter xs 1) xs)


main :: IO()
main = do
    print $ pack [1, 2, 3, 7, 8 ,9]
    print $ pack [1, 7, 8 ,9] == [[1],[7,8,9]]
    print $ pack [1, 9] == [[1],[9]]

    