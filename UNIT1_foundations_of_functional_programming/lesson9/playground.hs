import Data.Char
-- Higher order functions
incAllValues :: [Integer] -> [Integer]
incAllValues = map (+1)
mySum :: [Integer] -> Integer
mySum = foldl (+) 0 

rcons x y = y:x
myReverse xs = foldl rcons [] xs 

--Q9.1
myElem id aList = length (filter (==id) aList) > 0

--Q9.2 isPalindrome with spaces
sanitize sentence = map toLower (filter (/= ' ') sentence)
isPalindrome sentence = cleared == reverse cleared
    where cleared = sanitize sentence

--Q9.3 Harmonic summation
harmonic n = sum (take n (map (1/) [1..]))