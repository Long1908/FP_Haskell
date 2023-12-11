checkForNumberLength :: Int -> Int -> Int
checkForPalindrome :: Int -> Bool
helper :: Int -> Int -> Bool
sumMinMaxPalindromes :: Int -> Int

main :: IO()
main = do
    print $ sumMinMaxPalindromes 132465 == 8
    print $ sumMinMaxPalindromes 654546 == 8
    print $ sumMinMaxPalindromes 100001 == 100012
    print $ sumMinMaxPalindromes 21612 == 21614
    print $ sumMinMaxPalindromes 26362 == 26364


checkForNumberLength n length
    |n == 0 = length
    |otherwise = checkForNumberLength (div n 10) (length + 1)

checkForPalindrome n = helper n 1

helper n i
    |(checkForNumberLength n 0) < i = True
    |otherwise = ((mod (div n (10 ^ ((checkForNumberLength n 0) - i))) 10) == mod n 10) && 
            (helper (div n 10) (i + 1))

sumMinMaxPalindromes n = (minimum $ filter (checkForPalindrome) $ filter (\ x -> (mod n x) == 0) [2 .. n]) 
                        + (maximum $ filter (checkForPalindrome) $ filter (\ x -> (mod n x) == 0) [2 .. n]) 