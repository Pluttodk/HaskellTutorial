-- Recursion
myGCD a b = if remainder == 0
        then b
        else myGCD b remainder
    where remainder = a `mod` b


-- Pattern matching
sayAmount n = case n of
    1 -> "One"
    2 -> "Two"
    n -> "A bunch"

-- Seperate definition
sayAmountV2 1 = "One"
sayAmountV2 2 = "Two"
sayAmountV2 n = "A bunch"


-- Q7.1 tail without error
myTail [] = []
myTail n = tail n

-- Q7.2 gcd using pattern matching
newGCD a 0 = a
newGCD a b = newGCD b (a `mod` b)