{-
    Higher order functions
-}



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

