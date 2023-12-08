areAmicable :: Int -> Int -> Bool
getQuotientsSum :: Int -> Int

isPrime :: Int -> Bool

checkForPerfection :: Int -> Int
isPerfect :: Int -> Bool

main :: IO()
main = do
    --print $ [x | x <- [1 .. 6], mod x 3 == 0 && x > 3]
    --print $ [x + 10 | x <- [1 .. 6]]
    print "Task 7 :"
    print $ areAmicable 200 300 == False
    print $ areAmicable 220 284 == True
    print $ areAmicable 284 220 == True
    print $ areAmicable 1184 1210 == True
    print $ areAmicable 2620 2924 == True
    print $ areAmicable 6232 6368 == True
    print "Task 8 :"
    print $ isPrime 1 == False
    print $ isPrime 2 == True
    print $ isPrime 3 == True
    print $ isPrime 6 == False
    print $ isPrime 61 == True
    print "Task 9 :"
    print $ isPerfect 1 == False
    print $ isPerfect 6 == True
    print $ isPerfect 495 == False
    print $ isPerfect 33550336 == True

getQuotientsSum x = sum (filter (\ n -> mod x n == 0) [1 .. div x 2]) -- filter is a 'List Comprehension' function that filters the listbasd on the function tha we have parsed in it
areAmicable x y = getQuotientsSum x == y || getQuotientsSum y == x

isPrime x = ([] == (filter (\ n -> mod x n == 0) [2 .. (x - 1)])) && x /= 1 -- '/=' is te equvielant of NOT =

checkForPerfection x = sum (filter (\ n -> mod x n == 0) [1 .. (x - 1)])
isPerfect x = x == checkForPerfection x && x > 0

