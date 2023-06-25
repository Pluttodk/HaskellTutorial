-- closure - Functions with functions
ifEven func x = if even x
    then func x
    else x

genIfEven f = (\x -> ifEven f x)

-- QC 5.1 
genIfXEven x = (\f -> ifEven f x)
ifEvenXInc = genIfXEven 10

-- With closure arrange arguments from most to least general
getRequestUrl host apiKey resource id = 
    host ++
    "/" ++ 
    resource ++
    "/" ++
    id ++ 
    "?token" ++
    apiKey

genHostRequestBuilder host = (\apiKey resource id -> 
    getRequestUrl host apiKey resource id)

exampleHostBuilder = genHostRequestBuilder "http://example.com"

-- QC 5.2
genApiRequestBuilder hostBuilder apiKey resource = (\id -> 
    hostBuilder apiKey resource id)
----------


myExampleUrlBuilder = exampleHostBuilder "secretAPIkey"
-- ghci> myExampleUrlBuilder "book" "12"
-- "http://example.com/book/12?tokensecretAPIkey"

-- prefix function
addTwoValues = 2 + 2
addTwoPrefix = (+) 2 2

-- Q5.1 
ifEvenInc = ifEven (+ 1)
ifEvenDouble = ifEven (* 2)
ifEvenSquare = ifEven (^2)