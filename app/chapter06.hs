{-
    Higher order functions
-}


-- a zipWith, written using pattern matching and recursion
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]  
zipWith' _ [] _ = []  
zipWith' _ _ [] = []  
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys 

{-
    ghci> map (++ " asdf ") ["1", "2"]
    ["1 asdf ","2 asdf "]
    ghci> map (" asdf " ++) ["1", "2"]
    [" asdf 1"," asdf 2"]
-}

-- Quicksort using a filter and recursion and pattern matching
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort (filter (<=x) xs)
        biggerSorted = quicksort (filter (>x) xs)
    in smallerSorted ++ [x] ++ biggerSorted

-- find the largest number under 100,000 that's divisible by 3829
-- example from the book, showing how to use a filter, and using an infinite lazy loaded list
largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000, 99999..])
    where p x = x `mod` 3829 == 0

-- find the largest number under 100,000 that's divisible by 3829
-- alternative version demonstrating one can go in the other direction
largestDivisible' :: (Integral a) => a
largestDivisible' = last (takeWhile (<100000) [3829, (3829 * 2)..])

-- collatz sequences
chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n:chain (n `div` 2)
    | odd n  = n:chain (n*3 + 1)

--example from book
--number of collatz series starting with n <= 100 and of length longer than 15
numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
    where isLong xs = length xs > 15

--let's modify it
numLongChains' :: Int -> Int -> Int
numLongChains' n m = length (filter isLong (map chain (takeWhile (< n) [1..])))
    where isLong xs = length xs > m
{-
    ghci> numLongChains' 100 15
    65
    ghci> numLongChains' 2000 50
    1044
    ghci> numLongChains' 2000 100
    560
    ghci> numLongChains' 4000 100
    1300
-}

-- Folds . . . 

-- example from book
sum' :: (Num a) => [a] -> a
sum' xs = fold' (\acc x -> acc + x) 0 xs

-- or
-- sum' = foldl (+_) 0

-- example from book
elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys

-- The type, for 'foldl' :
-- ghci> :t foldl
-- foldl :: Foldable t => (b -> a -> b) -> b -> t a -> b

-- example from book
map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs












