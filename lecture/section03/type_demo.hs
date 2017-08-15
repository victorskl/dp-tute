
-- Haskell allows programmers to define their own types.
-- The simplest type definitions define types that are similar to enumerated types in C:

data Gender = Female | Male
data Role = Staff | Student

-- This defines two new types.
-- The type called Gender has the two values Female and Male,
-- while the type called Role has the two values Staff and Student.
-- Both types are also considered arity-0 type constructors; given zero argument types, they each construct a type.


-- You do not have to use such types. If you wish, you can use the standard boolean type instead, like this:

show1 :: Bool -> Bool -> String
-- intended usage: show1 isFemale isStaff
show1 True True = "female staff"
show1 True False = "female student"
show1 False True = "male staff"
show1 False False = "male student"

-- Main> :load type_demo.hs
-- [1 of 1] Compiling Main             ( type_demo.hs, interpreted )
-- Ok, 1 module loaded.
-- *Main> let isFemale = True
-- *Main> let isStaff = False
-- *Main> show1 isFemale isStaff
-- "female student"
-- *Main> show1 isStaff isFemale
-- "male staff"

-- The problem with using booleans is that of these two calls to show1,
-- only one matches the programmer’s intention, but since both are type correct (both supply two boolean arguments),
-- Haskell cannot catch errors that switch the arguments.


show2 :: Gender -> Role -> String
show2 Female Staff = "female staff"
show2 Female Student = "female student"
show2 Male Staff = "male staff"
show2 Male Student = "male student"

-- Prelude> :load type_demo.hs
-- [1 of 1] Compiling Main             ( type_demo.hs, interpreted )
-- Ok, 1 module loaded.
-- *Main> :t Female
-- Female :: Gender
-- *Main> :t Male
-- Male :: Gender
-- *Main> :t Staff
-- Staff :: Role
-- *Main> :t Student
-- Student :: Role
-- *Main> show2 Female Staff
-- "female staff"
-- *Main> show2 Male Student
-- "male student"

-- With show2, Haskell can and will detect and report any accidental switch.
-- This makes the program safer and the programmer more productive.
-- In general, you should use separate types for separate semantic distinctions.
-- You can use this technique in any language that supports enumerated types.