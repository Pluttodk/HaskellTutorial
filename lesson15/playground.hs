rotN :: (Bounded a, Enum a) => Int -> a -> a
rotN alphabetSize letter = toEnum rotation
    where middle = alphabetSize `div` 2
          offset = fromEnum letter + middle
          rotation = offset `mod` alphabetSize


-- OTP Encryption

class Cipher a where
    encode :: a -> String -> String
    decode :: a -> String -> String

data Rot = Rot

alphaSize :: Int
alphaSize = 1 + fromEnum (maxBound :: Char)

rotEncoder :: String -> String
rotEncoder = map (rotN alphaSize)

rotNDecoder :: (Bounded a, Enum a) => Int -> a -> a
rotNDecoder numbers char = toEnum rotation
    where middle = numbers `div` 2
          offset = if even numbers
                   then fromEnum char - middle
                   else 1 + fromEnum char - middle
          rotation = offset `mod` numbers

rotDecoder :: String -> String
rotDecoder = map (rotNDecoder alphaSize)

-- xorFunction
xor :: [Bool] -> [Bool] -> [Bool]
xor a b = map (\(x,y) -> (x || y) && not (x && y)) (zip a b)

type Bits = [Bool]
intToBits :: Int -> Bits
intToBits 0 = [False]
intToBits 1 = [True]
intToBits n = if remainder == 0
              then False : intToBits nextVal
              else True : intToBits nextVal
    where remainder = n `mod` 2
          nextVal = n `div` 2

charToBits :: Char -> Bits
charToBits char = intToBits (fromEnum char)

bitsToInt :: Bits -> Int
bitsToInt bits = sum (map (\(i, b) -> if b then 2^i else 0) (zip [0..] (reverse bits)))

bitsToChar :: Bits -> Char
bitsToChar bits = toEnum (bitsToInt bits)

data OneTimePad = OTP String

applyOTP' :: String -> String -> [Bits]
applyOTP' pad plaintext = map (\pair -> (fst pair) `xor` (snd pair)) (zip padBits plaintextBits)
    where padBits = map charToBits pad
          plaintextBits = map charToBits plaintext
