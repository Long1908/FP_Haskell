import Data.List

isPrime :: Int -> Bool
isPrime a = all (\ g -> (mod a g) /= 0) [2 .. (a - 1)]

hasDigit :: Int -> Int -> Bool
hasDigit a d
    |a == 0 = False
    |otherwise = ((mod a 10) == d) || hasDigit (div a 10) d

sumSpecialPrimes :: Int -> Int -> Int
sumSpecialPrimes a b = sum $ take a $ filter (\ g -> isPrime g && hasDigit g b) [1 ..]

main :: IO()
main = do
    print $ sumSpecialPrimes 5 2 == 392
    print $ sumSpecialPrimes 5 3 == 107
    print $ sumSpecialPrimes 10 3 == 462
