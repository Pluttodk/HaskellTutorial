class Desibable a where
    describe :: a -> String

-- You can define a class a dependent on another class 
class Eq a => OrdNew a where
    compare :: a -> a -> Ordering
    (<) :: a -> a -> Bool
    (>) :: a -> a -> Bool
    (<=) :: a -> a -> Bool
    (>=) :: a -> a -> Bool
    max :: a -> a -> a
    min :: a -> a -> a

-- Here defining that for two types to be ordered they have to atleast be possible to compare (EQ)

data DragonBallCharacter = Goku | Gohan deriving (Show, Eq, Ord)

-- Q13.2 difference between inc and succ for Int
inc :: Int -> Int
inc x = x + 1
-- Inc will overflow if used on maxBond :: Int. Where as Succ will raise an error, since we are limited to the range of Int

-- Q13.3: cycleSucc without error
cycleSucc :: (Bounded a, Enum a, Eq a) => a -> a
cycleSucc x = if x == maxBound then minBound else succ x