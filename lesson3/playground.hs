-- Lambda function
-- (\x->x) "hi"

body = (\sumSquare squareSum -> 
        if sumSquare > squareSum
        then sumSquare
        else squareSum)

sumSquareOrSquareSum :: Integer -> Integer -> Integer
sumSquareOrSquareSum x y = body (x^2+y^2) ((x+y)^2)

sumSquareOrSquareSumWhere x y =  if sumSquare > squareSum
                                 then sumSquare
                                 else squareSum
    where   sumSquare = (x^2 + y^2)
            squareSum = (x+y)^2


sumSquareOrSquareSumLet x y = 
    let sumSquare = (x^2 + y^2)
        squareSum = (x+y)^2
    in
        if sumSquare > squareSum
        then sumSquare
        else squareSum

-- Q.C 3.4
-- It looks up in the nearest scope for the value of a function
overwrite x = (\x -> 
        (\x ->
            (\x -> x) 4 -- x=4
        )3 -- x=3
    )2 -- x =2

--Q3.2
counter x = (\x -> 
    (\x -> 
        x+1
    )x+1
    )x