import System.IO
import System.Environment (getArgs)
-- import Data.Char (toUpper)
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

-- Capitalize.hs rewrites a file full capitalized

-- caps :: String -> String
-- caps = map toUpper 

-- main :: IO ()
-- main = do
--     args <- getArgs
--     let fileName = head args
--     cnts <- openFile fileName ReadWriteMode
--     texts <- hGetContents cnts
--     hClose cnts
--     cnts2 <- openFile fileName WriteMode
--     hPutStr cnts2 "Test"
--     hClose cnts2
--     -- hPutStr cnts (caps texts)
--     putStrLn ("File: " ++ fileName ++ " is now written in all caps!")

-- Above solution does not work due to lazy evaluation in haskell basic IO. 
-- The solution is to use Data Text IO instead. Avoiding lazy evaluating file


main :: IO ()
main = do
    args <- getArgs
    let name = head args
    input <- TIO.readFile name
    TIO.writeFile name (T.toUpper input)
    putStrLn ("File: " ++ name ++ " is now written in all caps!")

