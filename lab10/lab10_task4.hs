import Data.Char -- ->Important for digitToInt
car :: String-> Char -- head
car [] = error "Empty list"
car (x:xs) = x


cdr :: String -> String -- tail
cdr [] = error "Empty list"
cdr (x:xs) = xs

isAscending :: Int -> Bool
isAscending n
    |div n 10 == 0 = True
    |otherwise = (digitToInt $ (car $ (show n))) <= (digitToInt $ (car $ (cdr $ (show n)))) && 
                 isAscending (read $ (cdr $ (show n))) 

main :: IO()
main = do
    print $ isAscending 123 == True
    print $ isAscending 122 == True
    print $ isAscending 0 == True
    print $ isAscending 10 == False
    print $ isAscending 12340 == False
    print $ isAscending 12349 == True