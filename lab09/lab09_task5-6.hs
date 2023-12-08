--Task 5-6

sqAvg :: Int -> Int -> Double 
isPalindrome :: Int -> Bool
helpCountDigits :: Int -> Int -> Int

main :: IO()
main = do
    print $ sqAvg 5 0 == 12.5
    print $ sqAvg 10 13 == 134.5 
    
    print $ isPalindrome 6 == True
    print $ isPalindrome 1010 == False
    print $ isPalindrome 505 == True
    print $ isPalindrome 123321 == True
    print $ isPalindrome 654 == False

sqAvg x y = (fromIntegral ((x * x) + (y * y))) / 2

helpCountDigits x counter
    |x == 0 = counter
    |otherwise = helpCountDigits (div x 10) (counter + 1)
isPalindrome x = helper x (helpCountDigits x 0)
    where
        helper:: Int -> Int -> Bool
        helper _ 0 = True
        helper _ 1 = True
        helper x counter = ((div x (10 ^ (counter - 1))) == (mod x 10)) &&
            (helper (div (x - ((div x (10 ^ (counter - 1))) * (10 ^ (counter - 1)))) 10) (counter - 2))