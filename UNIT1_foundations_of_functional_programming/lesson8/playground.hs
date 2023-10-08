-- Writing recusion
-- :set +s To have time in ghci
myLength [] = 0
myLength aList = 1 + myLength (tail aList)

ackermann 0 n = n + 1
ackermann m 0 = ackermann (m-1) 1
ackermann m n = ackermann (m-1) (ackermann m (n-1))

-- Q8.1
myReverse [] rev = rev
myReverse (x:xs) rev = myReverse xs (x:rev)

-- Q8.2
fastFib n1 n2 0 = n1 + n2
fastFib n1 n2 counter = fastFib n2 (n1+n2) (counter-1)