import Data.List
import Data.Char

isImage :: [Int] -> [Int] -> Bool
isImage xs ys = (length $ nub $ zipWith (-) xs ys) < 2

main :: IO()
main = do
    print $ isImage [1, 2, 3] [2, 3, 4] == True
    print $ isImage [1, 2, 3] [4, 6, 9] == False
    print $ isImage [1, 2, 3] [2, 5, 4] == False