module Main where
import Data.Bits (Bits(xor))
import Control.Concurrent (yield)

--import qualified MyLib (someFunc)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  putStrLn "Hello, World!"
  --MyLib.someFunc

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
  then x
  else x*2

doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

