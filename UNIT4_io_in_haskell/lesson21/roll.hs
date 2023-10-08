import System.Random ( randomRIO )

low :: Int
low = 1

high :: Int
high = 10

main :: IO()
main = do
    dieRoll <- randomRIO(low,high)
    putStrLn (show dieRoll)

-- IO works as a wrapper similar to that of Maybe. Since the inner part of IO might vary per run. 
-- Particular randomRIO, gives a different value per run and therefore violates referential transperanc
-- Making the function of type IO means that the output 