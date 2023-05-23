module Main where
  
import qualified MyLib (someFunc)

-------------------------
-- runs with "haskell(stack)" debug profile
-------------------------

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  putStrLn "Hello, World!"
  showOperators
  MyLib.someFunc

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
  then x
  else x*2

doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

showOperators = do
  putStrLn ("'A':\" SMALL CAT\" = " ++ ('A':" SMALL CAT") ++ " and : is the cons operator.")
  putStrLn ("['w','o'] ++ ['o','t'] = " ++ ['w','o'] ++ ['o','t'])
  putStrLn ("\"Steve Buscemi\" !! 6 = " ++ ["Steve Buscemi" !! 6])

{-
  Some list operations
  head - first element
  tail - everything but the first
  init - everything but the last
  last - last element
  length - length of list
  null - True if empty [], otherwise False
  reverse - reverse list
  take n list - first n elements of list
  drop n list - drops first n elements of list
  maximum
  minimum
  product
  elem - 4 `elem` [3,4,5,6]  True,  10 `elem` [3,4,5,6]  False

  replicate 3 10 returns [10,10,10]

  Ranges
  [1..20]  = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]  
  ['a'..'z']  =  "abcdefghijklmnopqrstuvwxyz"  
  ['K'..'Z']  =  "KLMNOPQRSTUVWXYZ"  
  [2,4..20]  = [2,4,6,8,10,12,14,16,18,20]
  [20,19..1] = [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]

  Infinite lists
  take 24 [13,26..] = first 24 multiples of 13
  take 10 (cycle [1,2,3])  =  [1,2,3,1,2,3,1,2,3,1]
  take 10 (repeat 5) = [5,5,5,5,5,5,5,5,5,5]

  List comprehension

  [x*2 | x <- [1..10]]  
  [2,4,6,8,10,12,14,16,18,20] 

  [x*2 | x <- [1..10], x*2 >= 12]  
  [12,14,16,18,20]  

  [ x | x <- [50..100], x `mod` 7 == 3]  
  [52,59,66,73,80,87,94]   

  [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]  
  [10,11,12,14,16,17,18,20]

  [ x*y | x <- [2,5,10], y <- [8,10,11]]  
  [16,20,22,40,50,55,80,100,110] 

  [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]  
  [55,80,100,110]
-}

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

length' xs = sum [1 | _ <- xs]

removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- And we can nest list comprehensions:

-- ghci> let xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]  
-- ghci> [ [ x | x <- xs, even x ] | xs <- xxs]  
-- [[2,2,4],[2,4,6,8],[2,4,2,6,2,6]] 

{-
  Tuple operations

    ghci> fst (8,11)  
    8  
    ghci> fst ("Wow", False)  
    "Wow"

    ghci> snd (8,11)  
    11  
    ghci> snd ("Wow", False)  
    False  

    ghci> zip [1,2,3,4,5] [5,5,5,5,5]  
    [(1,5),(2,5),(3,5),(4,5),(5,5)]  
    ghci> zip [1 .. 5] ["one", "two", "three", "four", "five"]  
    [(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]

    ghci> zip [1..] ["apple", "orange", "cherry", "mango"]  
    [(1,"apple"),(2,"orange"),(3,"cherry"),(4,"mango")] 
-}

findRightTriangle = do
  let triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ] 
  let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2] 
  [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
  -- putStrLn string rightTriangles'

