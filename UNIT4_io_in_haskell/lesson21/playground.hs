import qualified Data.Map as Map

mystery2 :: Int -> Int -> IO Int
mystery2 val1 val2 = do
    putStrLn "Enter a number"
    val3Input <- getLine
    let val3 = read val3Input
    return ((val1 + val2 + val3)^2)

-- Within the "do" function, following rules applies
-- "<-" notations allows to use type of IO as regular types, e.g. getLine :: IO String. by using val3Input "<-" val3Input becomes String
-- "let" is used on non IO types

--Q21.1 rewriting 21.1 with do
helloPerson :: String -> String
helloPerson name = "Hello " ++ name ++ "!"

users :: Map.Map Int String
users = Map.fromList [(0, "Steve"), (1, "Goku")]

maybePerson :: Maybe String
maybePerson = do
    user <- Map.lookup 1 users
    return (helloPerson user)


--Q21.2 Fib but with user input
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main :: IO ()
main = do
    putStrLn "Enter a fib number to compute"
    number <- getLine
    let intNumber = read number
    putStrLn (show (fib intNumber))