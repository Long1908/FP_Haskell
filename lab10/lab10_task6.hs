import Data.List -- ->Important to use 'group' function
import Data.Char

countOccurrences :: String -> [(Char, Int)]
countOccurrences str = map (\ g -> (head g, length g)) $ group $ sort $ map toLower str

main :: IO()
main = do
    print $ group $ sort $ map toLower "test"