main :: IO ()
main = do
    lines <- getContents
    let reversed = reverse lines
    putStrLn reversed