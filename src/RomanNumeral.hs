module RomanNumeral (numeralize) where

numeralize :: Int -> [Char] 
numeralize n
    | n < 1 = "Less than 1"
    | n < 10 = (["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"] !! (n - 1))
    | otherwise = "Greater than 9"