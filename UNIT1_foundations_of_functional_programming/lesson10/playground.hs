-- Message passing approach compared to OOP

-- Constructor
cup mL = \message -> message mL

getML aCup = aCup (\mL -> mL)

-- Alterng objects
drink aCup mlDrank = cup (currentML - mlDrank)
    where currentML = getML aCup



-- GHCI COMMANDS
coffeeCup = cup 600

afterASip = drink coffeeCup 100
-- getML coffeCup

afterManySips = foldl drink coffeeCup [100,100,100,100]

-- The rest serves simple as an explanation of how to create robots, but are not really important 
-- for grasping the context