
-- Write a Haskell function to filter out the negative
-- numbers from a list. Begin with a type declaration.

filter :: Num a => [a] -> [a]

filter [] = []
filter (x:xs) =
  if (x < 0) then
    filter xs
  else
    x:filter xs
