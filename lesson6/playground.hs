-- List

list1 = 1:[] --[1]
list2 = 1:2:3:4:[]

allNumbers = [1..10]
oddNumbers = [1,3..10]
-- Lazy Evaluation
unEndingList = [1..]


-- Accessing index
fourthElement = allNumbers !! 3
lengthNumbers = length allNumbers
reverseNumbers = reverse allNumbers

isPalindrome word = word == reverse word

-- check if value exists
doesThirteenExists = elem 13 allNumbers

-- Take and drop
top5 = take 5 
takeLast n list = reverse (take n (reverse list))
drop5 = drop 5

-- Zip
zipped = zip [1,3..9] [2,4..10]

-- Cycle - Creates an infinite list of cycles
ones n = take n (cycle [1])

assignToGroups n aList = zip groups aList
    where groups = cycle [1..n]

-- Q6.1 repeat function
repeatHomemade n = cycle [n]

-- Q6.2 subseq function
subseq firstPos lastPos aList = take (lastPos-firstPos) (drop firstPos aList)
