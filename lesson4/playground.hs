import Data.List
-- first-class function

inc n = n+1

double n = n*2

square n = n^2

ifEven func n = if even n
        then func n
        else n

-- pass function into function
ifEvenInc n = ifEven inc n

-- Functions have precedence over operators

--i.e.
x_correct = 1 + 2 * 3 -- 7
x_incorrect = inc 2 * 3 -- 9

-- QC 4.1 lambda function that cubes x if even
ifEvenCube x = ifEven (\x -> x^3) x



-- CUSTOM SORTING
author = ("Will", "Kurt")
fst_author = fst author
snd_author = snd author

names = [
    ("Ian", "Curtis"),
    ("John", "Stewart"),
    ("Peter", "Parker"),
    ("Stan", "Lee"),
    ("Christopher", "Lee")]

-- sorting is part of Haskell build in library data list
sorted_name = sort names

-- QC: 4.2
compareFirstName name1 name2 = if firstname1 > firstname2
    then GT
    else if firstname1 < firstname2
        then LT
        else EQ
    where firstname1 = fst name1
          firstname2 = fst name2

compareLastName name1 name2 = if lastname1 > lastname2
    then GT
    else if lastname1  < lastname2
        then LT
        else compareFirstName name1 name2
    where lastname1 = snd name1
          lastname2 = snd name2


sortedByLastName = sortBy compareLastName names

-- Q 4.1
compareNames name1 name2 = if lastnameComp == EQ
    then compare (fst name1) (fst name2)
    else lastnameComp
    where lastnameComp = compare (snd name1) (snd name2)
