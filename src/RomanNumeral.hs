module RomanNumeral (numeralize) where

{-
    n: number to numeralize, e.g., 23 -> XXIII
-}
numeralize :: Int -> [Char] 
numeralize n -- i
    | n < 0 = "Less than 0"
    | n < 1000 = "temporarily skip" -- map numerIndex show n
    | otherwise = "Greater than 9"

{-
    take a number like 876 and output a list like [8, 7, 6]
-}
breakDownNumber :: Int -> [Int]
breakDownNumber n = [n]


{-
    n: digit to numeralize
    i: index on the number to numeralize. e.g., for 624 there would be a 0 for the 3 and a 1 for the 4 and a 3 for the 6
numerIndex :: Int -> Int -> [Char] 
numerIndex n i
    | n < 0 `or` n > 9 = "*"
    | i == 0 = (["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"] !! n)
    | i == 1 = (["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"] !! n)
    | i == 2 = (["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"] !! n)
    | otherwise = "?"

 
-}   