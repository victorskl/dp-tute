-- Q7
-- to reverse a list, so args is a list
-- and start with empty list
-- pattern matching
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x] -- ++ means append

main = print (myReverse [1,2,3])