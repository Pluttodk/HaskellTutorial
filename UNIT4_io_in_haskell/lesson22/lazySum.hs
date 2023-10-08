readInts :: String -> [Int]
readInts = map read . lines

main :: IO()
main = do
    numbers <- getContents
    let vals = readInts numbers
    print (sum vals)