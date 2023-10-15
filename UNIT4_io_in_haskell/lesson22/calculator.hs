-- Solution taken from the book to see how this implementation differs from my solution
calc :: [String] -> Int
calc (val1:"+":val2:rest) = read val1 + read val2
calc (val1:"*":val2:rest) = read val1 * read val2

main :: IO ()
main = do
    userInput <- getContents
    let values = lines userInput
    print (calc values)