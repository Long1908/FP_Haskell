--Task 2

factRec :: Int -> Int
factIter :: Int -> Int 
factXS :: Int -> Int

main :: IO()
main = do
    print $ factRec 11
    print $ factPM 11
    print $ factIter 11
    print $ factXS 11

factRec x
    |x == 1 = 1
    |otherwise = x * (factRec $ x - 1)

-- Cool way to make recursion functions
factPM :: Int -> Int
factPM 0 = 1
factPM x = x * (factPM $ x - 1)

factIter x = helper x 1
    where
        helper :: Int -> Int -> Int
        helper 0 result = result
        helper current result = helper (current - 1) (result * current)

factXS x = product [1 .. x] -- e.g. product [1 .. 5] == 1 * 2 * 3 * 4 * 5 == 120, where [1 .. 5] is a list of the integers 1, 2, 3, 4, 5 and 'product' in it's base form just multiplies th contents of the list