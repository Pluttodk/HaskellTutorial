import System.Environment
import System.Random ( randomRIO )
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as BC

intToChar :: Int -> Char
intToChar a = toEnum (a `mod` 255)

intToBC :: Int -> BC.ByteString
intToBC a = BC.pack [intToChar a]

replaceByte :: Int -> Int -> BC.ByteString -> BC.ByteString
replaceByte loc charVal bytes = mconcat [before, newChar, ending]
    where (before, rest) = BC.splitAt loc bytes
          ending = BC.drop 1 rest
          newChar = intToBC charVal

randomReplace :: BC.ByteString -> IO BC.ByteString
randomReplace image = do
    let imgLength = BC.length image
    splitLocation <- randomRIO (0, imgLength)
    charVal <- randomRIO (0,255)
    return (replaceByte splitLocation charVal image)

main :: IO ()
main = do
    args <- getArgs
    let fileName = head args
    imageFile <- BC.readFile fileName
    glitched <- randomReplace imageFile
    let glitchedFileName = mconcat ["glitched_",fileName]
    BC.writeFile glitchedFileName glitched
    print "Glitched image done!"