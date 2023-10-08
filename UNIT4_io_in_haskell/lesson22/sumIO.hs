import System.Environment
import Control.Monad

main :: IO ()
main = do
    args <- getArgs
    let lengthValues = length args
    -- vals <- mapM (\_ -> getLine) [1..lengthValues]
    -- vals <- replicateM lengthValues getLine
    -- "We use mapM_ throwing away all the results"
    let values = map read args :: [Int]
    print (sum values)
    mapM_ putStrLn args