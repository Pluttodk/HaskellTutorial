{-# LANGUAGE OverloadedStrings #-}
-- Q23.1
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

helloPerson :: T.Text -> T.Text
helloPerson name = "Hello " <> name <> "!"

main = do
    TIO.putStrLn "Hello what is your name"
    name <- getLine
    let statement = helloPerson (T.pack name)
    TIO.putStrLn statement