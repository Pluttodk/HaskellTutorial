-- Semigroup add possibility

instance Semigroup Integer where
        (<>) x y = x + y



-- Nice short explanation of what a monoid is. Particular list of int is a monoid since [1,2,3] ++ [] = [1,2,3] therefore id is []
-- class Monoid a where
--     mepmtpy :: a
--     mappend :: a -> a -> a
--     mconcat :: [a] -> a

-- Rules
-- Rules of identity -> mappend mempty x = x
    -- Has to apply reversed -> mappend x mempty = x
-- Rules of associativity -> mappend x (mappen y z) = mappend (mappend x y) z
-- Rules of combining (not really a rule by wiki, but derived from the two previous rules. However a good indicator if class is a monoid) -> mconcat = foldr mappend mempty


--Q17.1 Color as a monoid
data Color = Red 
    | Yellow 
    | Blue 
    | White 
    | Smudge deriving (Show, Eq)

instance Semigroup Color where
    (<>) a White = a
    (<>) White a = a
    (<>) a b = Smudge

instance Monoid Color where
    mempty = White
    mappend = (<>)