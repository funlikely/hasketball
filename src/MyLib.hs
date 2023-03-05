module MyLib (someFunc) where

someFunc :: IO ()
someFunc = do
    putStrLn "someFunc"
    putStrLn "attempt to edit and add to a module that is called by 'main'."