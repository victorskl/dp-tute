-- checks whether a list is empty
isEmpty [] = True
isEmpty (_:_) = False

-- underscore _ is a special pattern that matches anything.

-- *Main> :t isEmpty
-- isEmpty :: [a] -> Bool