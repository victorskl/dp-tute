-- Q6
append [] lst = lst
append (e:es) lst = e:append es lst

main = print (append [9, 8, 7] [6, 5, 4])

-- To check type signature
--Prelude>:load append.hs
--Main>:t append
--append :: [a] -> [a] -> [a]
