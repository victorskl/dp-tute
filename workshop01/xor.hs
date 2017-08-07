-- Q5
-- xor: Bool -> Bool -> Bool
-- pattern matching
xor1 False False = False
xor1 True False = True
xor1 False True = True
xor1 True True = False

-- logical operation
xor2 x y = (x || y) && not (x && y) -- middle expr of pattern matching
