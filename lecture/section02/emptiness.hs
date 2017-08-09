
-- declare the module
module Emptiness where

-- declare the type of each function
isEmpty :: [t] -> Bool

-- function expressions - pattern matching
isEmpty [] = True
isEmpty _ = False

-- Declaring the type of functions is required only by good programming style.
-- The Haskell implementation will infer the types of functions if not declared.