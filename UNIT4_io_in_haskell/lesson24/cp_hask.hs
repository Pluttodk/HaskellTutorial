import System.IO
import System.Environment

head2 :: [a] -> a
head2 (_:b) = head b

main = do
    args <- getArgs
    let srcFileName = head args
    let dstFileName = head2 args
    srcFile <- openFile srcFileName ReadWriteMode
    dstFile <- openFile dstFileName WriteMode
    content <- hGetContents srcFile
    hPutStr dstFile content
    hClose srcFile
    hClose dstFile
    putStrLn ("Copied " ++ srcFileName ++ " too " ++ dstFileName)