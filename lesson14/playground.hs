data DragonBallSayans = N | SS | SS2 | SS3

instance Show DragonBallSayans where
    show N = "Normal"
    show SS = "Super Saiyan"
    show SS2 = "Super Saiyan 2"
    show SS3 = "Super Saiyan 3"

instance Eq DragonBallSayans where
    (==) N N = True
    (==) SS SS = True
    (==) SS2 SS2 = True
    (==) SS3 SS3 = True
    (==) _ _ = False

instance Ord DragonBallSayans where
    compare SS3 SS3 = EQ
    compare SS3 _ = GT
    compare _ SS3 = LT
    compare SS2 SS2 = EQ
    compare SS2 _ = GT
    compare _ SS2 = LT

instance Enum DragonBallSayans where
    toEnum 0 = N
    toEnum 1 = SS
    toEnum 2 = SS2
    toEnum 3 = SS3
    toEnum _ = error "No such transformation"
    fromEnum N = 0
    fromEnum SS = 1
    fromEnum SS2 = 2
    fromEnum SS3 = 3

-- Q14.1 Enum with eq and ord
data MyEnum = A | B | C | D deriving (Enum)
instance Eq MyEnum where
    (==) x y = fromEnum x == fromEnum y

instance Ord MyEnum where
    compare x y = compare (fromEnum x) (fromEnum y)
