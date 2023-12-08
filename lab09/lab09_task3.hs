fibIter :: Int -> Integer
fibRec :: Int -> Int

main :: IO()
main = do
    print $ fibRec 11
    print $ fibIter 110


fibIter x = helper 0 1 x
    where
        helper :: Integer -> Integer -> Int -> Integer -- 'Integer' can hold bigger numbers than 'Int'
        helper previous current 1 = current
        helper previous current counter = helper current (previous + current) (counter - 1)

fibRec 0 = 0
fibRec 1 = 1
fibRec n = fibRec (n - 1) + fibRec (n - 2) --Tree like recursion