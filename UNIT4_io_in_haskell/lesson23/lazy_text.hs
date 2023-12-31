{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text.Lazy as T
import qualified Data.Text.Lazy.IO as TIO
import qualified Data.Text.Read as TR

toInts :: T.Text -> [Int]
toInts = map (read . T.unpack) . T.lines

main = do
    userInput <- TIO.getContents
    let numbers = toInts userInput
    print (sum numbers)