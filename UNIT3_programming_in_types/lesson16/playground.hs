-- Creating data types for first name, middle name and last name
type FirstName = String
type MiddleName = String
type LastName = String

data Name = Name FirstName LastName 
    | NameWithMiddle FirstName MiddleName LastName
    | NameWithTwoLetters Char Char LastName
    | NameWithTrailingLetters FirstName Char Char

andrewWR :: Name
andrewWR = NameWithTrailingLetters "Andrew" 'W' 'R'

-- Sum types
data Book = Book {
    author      :: Name,
    bookTitle       :: String,
    releaseYear :: Int,
    recordPrice :: Double
}

harryPotter :: Book
harryPotter = Book 
    (NameWithTwoLetters 'J' 'K' "Rowling")
    "Harry Potter and the Phoenix Order"
    2003
    10.05

-- Q16.1 Paramphlets
data Paramphlets = Paramphlet {
    paramTitle           :: String,
    description     :: String,
    contactField    :: Name
}

data Store = BookItem Book | ParamphletItem Paramphlets

-- Q16.2 Shape calculations
data Shape = Square Double | Rectangle Double Double | Circle Double

circumference :: Shape -> Double
circumference (Square a) = a*4
circumference (Rectangle a b) = a*2 + b*2
circumference (Circle r) = 2*pi*r

area :: Shape -> Double
area (Square a) = a*a
area (Rectangle a b) = a*b
area (Circle r) = pi*r^2