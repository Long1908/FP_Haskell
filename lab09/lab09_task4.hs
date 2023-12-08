isInsideNoLists :: Int -> Int -> Int -> Bool
isInsideLists :: Int -> Int -> Int -> Bool
isInsideLambda :: Int -> Int -> Int -> Bool

main :: IO()
main = do
    print $ isInsideNoLists 5 1 4 == True
    print $ isInsideNoLists 10 50 20 == True
    print $ isInsideNoLists 10 50 1 == False

    print $ isInsideLists 5 1 4 == True
    print $ isInsideLists 10 50 20 == True
    print $ isInsideLists 10 50 1 == False

    print $ (isInsideLambda 5 1) 4 == True
    print $ (isInsideLambda 10 50) 20 == True
    print $ (isInsideLambda 10 50) 1 == False


isInsideNoLists start end n = min start end <= n && n <= max start end

isInsideLists start end n = elem n [min start end .. max start end] -- 'elem' is a ready function to check if an element that we parse is inside a list

isInsideLambda start end = (\ x -> min start end <= x && x <= max start end) -- Haskell also has 'lambda functions' and it is written wit thesymbol '\'