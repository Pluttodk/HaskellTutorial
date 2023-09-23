y :: Integer
y = 6

-- Q11.1 type signature for filter

-- myFilter :: (a -> bool) -> [a] -> [a]
-- Can has to be a function that gives a bool
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f [] = []
myFilter f (x:xs) = if f x
                then x : myFilter f xs
                else []

-- Q11.2 head and tail method
myTail :: [a] -> [a]
myTail [] = []
myTail x = tail x

myHead :: [a] -> [a]
myHead [] = []
myHead x = [head x]

-- Q11.3 foldl
myFoldl :: (f -> a -> f) -> f -> [a] -> f
myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
    where newInit = f init x