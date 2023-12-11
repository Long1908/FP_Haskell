import Data.List

empty :: [Int]
empty = []

xs1 :: [Int]
xs1 = [1, 2, 3, 4]

xs2 :: [Int]
xs2 = 1 : []

xs3 :: [Int]
xs3 = 1 : [2, 3]

isEmpty :: [Int] -> Bool
isEmpty xs = null xs 

car :: [Int] -> Int -- head
car [] = error "Empty list"
car (x:xs) = x

cdr :: [Int] -> [Int] -- tail
cdr [] = error "Empty list"
cdr (x:xs) = xs

at :: [Int] -> Int -> Int
at xs i = xs!!i

-- last

main :: IO()
main = do
    --LISTS AND SOME THINGS THAT WE CAN DO WITH THEM
    print $ elem 1 [1, 2, 3, 4]
    print $ elem 1 [5, 2, 3, 4]
    print $ [1, 2, 3] ++ [4, 5, 6]
    print $ length [1, 2, 3]
    print $ reverse [1, 2, 3]
    print $ sum [1, 2, 3]
    print $ product [1, 2, 3]
    print $ minimum [1, 2, 3] -- maximum
    print $ take 2 [1, 2, 3]
    print $ take 5 [1, 2, 3]
    print $ drop 2 [1, 2, 3]
    print $ drop 5 [1, 2, 3]
    print $ nub [1, 2, 1, 2, 3, 3, 1, 1]
    print $ sort [5, 3, 4, 1, 2]
    --LIST COMPREHENSIONS
    print $ [1 .. 5]
    print $ [1, 3 .. 6]
    print $ [x + 10 | x <- [1 .. 6]]
    print $ [x | x <- [1 .. 6], even x]
    print $ [x | x <- [1 .. 6], mod x 3 == 0 && x > 3]
    --LAMBDA FUNCTIONS AND SOME INTERESTING BUILD INS LIKE FILTER AND MAP
    getEven :: [Int] -> [Int]
    getEven xs = filter (\ x -> even x) xs

    double :: [Int] -> [Int]
    double xs = map (\ x -> 2 * x) xs

    areAllOdd :: [Int] -> Bool -- any
    areAllOdd xs = all odd xs

    main :: IO ()
    main = do
        print $ (\ x y z -> x + y + z) 1 2 3