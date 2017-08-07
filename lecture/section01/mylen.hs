-- using pattern matching
mylen [] = 0
mylen (x:xs) = 1 + mylen xs

main = print (mylen ["a", "b", "c"])