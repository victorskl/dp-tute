-- Q8

getNthElem 1 xs = head xs
getNthElem n [] = error "'n' is greater than the length of the list"
getNthElem n xs
    | n < 1 = error "'n' is non-positive"
    | otherwise = getNthElem (n-1) (tail xs)


-- *Main> :load nth_element.hs
-- [1 of 1] Compiling Main             ( nth_element.hs, interpreted )
-- Ok, modules loaded: Main.
-- *Main> getNthElem 5 [2,3,4,4,21,4,5,7,8,8]
-- 21
-- *Main> getNthElem 7 [2,3,4,4,21,4,5,7,8,8]
-- 5