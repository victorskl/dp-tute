all_pos [] = True
all_pos (x:xs) = x > 0 && all_pos xs

main = print (all_pos [1, 2, 3])