--Task 1 : https://github.com/triffon/fp-2023-24/tree/main/exercises/inf2/Week08-HelloHaskell/lab

myComparison :: Int -> Int -> Int
myComparisonWithGuard :: Int -> Int -> Int 
myComparisonWithIntegratedFuntions :: Int -> Int -> Int
myLastDigit :: Int -> Int
myQuotientWhole :: Int -> Int -> Int  -- Division without getting remainder
myQuotientReal :: Double -> Double -> Double -- Division with getting the remainder
myRemoveLastDigit :: Int -> Int 
myDivReal :: Double -> Double -> Double
myAvgOfTwoWhole :: Int -> Int -> Double
myRoundTwoDig :: Double -> Double

main :: IO()
main = do
    print $ myComparison 15 60
    print $ myComparisonWithGuard 15 60
    print $ myComparisonWithIntegratedFuntions 15 60
    print $ myLastDigit 1112    
    print $ myQuotientWhole 64 2
    print $ myQuotientReal 154 17
    print $ myRemoveLastDigit 154
    print $ myDivReal 154.451 10.01
    print $ myAvgOfTwoWhole 5 1542
    print $ myRoundTwoDig 3.1413465345321

myComparison x y = if x < y then x else y

myComparisonWithGuard x y
    |x < y = x
    |otherwise = y

myComparisonWithIntegratedFuntions x y = min x y

myLastDigit x = mod x 10

myQuotientWhole x y = div x y -- The ready function 'div' gives ius an integer after division without the remainder

myQuotientReal x y = x / y -- '/' is a division that shows the remainder

myRemoveLastDigit x = div x 10

myDivReal x y = x / y

myAvgOfTwoWhole x y = fromIntegral (x + y) / 2 -- we use 'fromIntegral' so that we can convert the integers that we parse to a non-integral numeric argument, so that we can use it to get a 'Double' answer

myRoundTwoDig x = (fromIntegral $ floor $ x * 100) / 100 -- multible functions can be used not only by closing them correctly in brackets but by using $ 