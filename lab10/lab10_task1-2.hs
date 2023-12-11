--TASKS 1 - 2

--task 1 declarations:
revOneLine :: Int -> Int
revOneLineMagic :: Int -> Int
--task 2 declarations:
power :: Int -> Int -> Int
square :: Int -> Int
addOneXs :: [Int] -> [Int]
add :: Int -> Int -> Int
addOneN :: Int -> Int
sqPlusOne :: Int -> Int



main :: IO()
main = do
    print "Task 1 tests: "
    print $ revOneLine 123 == 321
    print $ revOneLineMagic 123 == 321
    print "Task 2 tests: "
    print $ addOneXs [1, 2, 3, 4, 5] == [2, 3, 4, 5, 6]
    print $ addOneN 5 == 6
    print $ sqPlusOne 5 == 26


--task 1 definitions:
revOneLine n = read $ reverse $ show n
revOneLineMagic = read . reverse . show

--task 2 definitions:
power a b = a ^ b
square a = power a 2
add a b = a + b
addOneXs xs = map (+ 1) xs -- The magical one: 'addOneXs = map (+ 1)'
-- addOneXs xs = [x + 1 | x <- xs]
addOneN n = add n 1
sqPlusOne n = addOneN $ square n
