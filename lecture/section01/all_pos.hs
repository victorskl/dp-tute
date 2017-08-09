all_pos [] = True
all_pos (x:xs) = x > 0 && all_pos xs

main = print (all_pos [1, 2, 3])


-- evaluation order A:
-- 0: all_pos [-1, 2]
-- 1: -1 > 0 && all_pos [2]
-- 2: False && all_pos [2]
-- 3: False

-- evaluation order B:
-- 0: all_pos [-1, 2]
-- 1: -1 > 0 && all_pos [2]
-- 2: -1 > 0 && 2 > 0 && all_pos []
-- 3: -1 > 0 && 2 > 0 && True
-- 4: -1 > 0 && True && True
-- 5: -1 > 0 && True
-- 6: False && True
-- 7: False

-- provided e.g. allpos.hs