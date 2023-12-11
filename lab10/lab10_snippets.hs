import Data.Char --Impots always have to be on the head of he files

--PAIRS, COMPLEX TUPLES AND AN EXAMPLE WHAT YOU CAN DO WITH A TUPLE
myFirstHaskellTuple :: (Int, Int)
myFirstHaskellTuple = (2, 4)
-- std::pair<int, int>

moreComplexTuple :: (Int, [Double], Char)
moreComplexTuple = (2, [2.3, 4.6, 10.3], 'p')
-- std::tuple<int, std::vector<double>, char>

type Point2D = (Double, Double)
-- typedef std::pair<double, double> Point2D;

sumOfCoordinates :: Point2D -> Double
sumOfCoordinates (x, y) = x + y -- -> We need to parse our input in brackets and commas between each different value

--STRING AND THINGS A FEW EXAMPLES OF WHAT WE CAN DO WIH STRINGS

numbertoString :: Int -> String
numbertoString n = show n

stringToNumber :: String -> Int
stringToNumber str = read str -- -> We need to parse a valid number in quotes

charToDigit :: Char -> Int
charToDigit ch = digitToInt ch -- -> We need to parse a valide digit in apostrophes.

-- USING ALREAD DEFINED FUNCTIONS IN OTHER FUNCTIONS. LOOKING AT THE FUNCTIONS 'TAKE' FOR A LIST

add :: Int -> Int -> Int
add x y = x + y

add5 :: Int -> Int
add5 = add 5

take3 :: [Int] -> [Int]
take3 = take 3

-- power :: Int -> Int -> Int
-- power x y = x ^ y

-- square :: Int -> Int
-- square = power 2

-- cube :: Int -> Int
-- cube = power 3

main :: IO()
main = do
    print $ myFirstHaskellTuple
    print $ moreComplexTuple
    print $ sumOfCoordinates (1 , 5)
    --
    print $ numbertoString 5
    print $ stringToNumber "5"
    print $ charToDigit '5'
    --
    print $ take3 [1, 2, 3, 4, 5] -- -> [1, 2, 3]
