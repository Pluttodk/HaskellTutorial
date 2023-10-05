import qualified Data.Map as Map
data Triple a = Triple a a a deriving Show

type Initials = Triple Char

testInitials :: Initials
testInitials = Triple 'A' 'B' 'C'

-- Linked list with own definition of list
data List a = Empty | Cons a (List a) deriving Show

-- Types in List are arbitrary
testList1 :: List Integer
testList1 = Cons 1 (Cons 2 (Cons 3 Empty))

testList2 :: List String
testList2 = Cons "Hello" (Cons " World" Empty)

mapFunc :: (a ->  b) -> List a -> List b
mapFunc _ Empty = Empty
mapFunc f (Cons a rest) = Cons (f a) (mapFunc f rest)

data Organ = Heart | Lungs | Kidney | Brain deriving (Show, Eq)

instance Ord Organ where
    compare :: Organ -> Organ -> Ordering
    compare Heart Heart = EQ
    compare Heart _ = GT
    compare _ Heart = LT
    compare Lungs Lungs = EQ
    compare Lungs _ = GT
    compare _ Lungs = LT
    compare Kidney Kidney = EQ
    compare Kidney _ = GT
    compare _ Kidney = LT
    compare Brain Brain = EQ

organs :: [Organ]
organs = [Heart, Heart, Lungs, Kidney, Brain]

inventory :: [Int]
inventory = [4,12,2,8,9]

organInventory :: [(Organ, Int)]
organInventory = zip organs inventory

lookupMap :: Map.Map Organ Int
lookupMap = Map.fromList organInventory

-- Map.lookup Heart lookupMap