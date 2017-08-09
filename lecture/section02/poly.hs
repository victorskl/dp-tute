-- Parametric polymorphic
-- a version of the code of len complete with type declaration:

len :: [t] -> Int
len [] = 0
len (_:xs) = 1 + len xs

-- This function, like many others in Haskell, is polymorphic.

-- It means that len can process lists of type t regardless of what type t is,
--    i.e. regardless of what the form of the elements is.

-- The reason why len works regardless of the type of the list elements is that
--    it does not do anything with the list elements.

-- the underscore is a placeholder for a value you want to ignore.