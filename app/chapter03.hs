main = do
  putStrLn "Chapter three of learn you a haskell"


removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- question -- what is the best way to use negative numbers in input?
-- "-2" will fail as it views the - as an operator,
-- but "(-2)" seems to be interpreted as a negative two.boomBangs

factorial :: Integer -> Integer
factorial n = product [1..n]

factorial' :: Integer -> Integer
factorial' 1 = 1
factorial' n = n * factorial' (n - 1)

-- ghci> factorial 100
-- 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000
-- ghci> factorial' 100
-- 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- ghci> :t elem
-- elem :: (Foldable t, Eq a) => a -> t a -> Bool
-- ghci> :t fst
-- fst :: (a, b) -> a

-- ghci> :t (==)
-- (==) :: Eq a => a -> a -> Bool
-- ghci> :t (*)
-- (*) :: Num a => a -> a -> a
-- ghci> :t (>)
-- (>) :: Ord a => a -> a -> Bool

{-
  => is a class constraint

    ghci> read "[2, 3, 4]" :: [Int]    
    [2,3,4]
    ghci> read "[2, 3, 4]" :: [Float]
    [2.0,3.0,4.0]


    ghci> maxBound :: (Bool, Int, Char)
    (True,9223372036854775807,'\1114111')
    ghci> :t maxBound 
    maxBound :: Bounded a => a

-}


