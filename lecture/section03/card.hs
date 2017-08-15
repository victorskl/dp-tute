module Card where

data Suit = Club | Diamond | Heart | Spade

data Rank =
    R2 | R3 | R4 | R5 | R6 | R7 | R8 | R9 | R10 |
    Jack | Queen | King | Ace

data Card = Card Suit Rank

-- The types Suit and Rank would be enumerated types in C,
-- while the type Card would be a structure type.
-- On the right hand side of the definition of the type Card,
-- Card is the name of the data constructor, while Suit and Rank are the types of its two arguments.


-- Prelude> :load card.hs
-- [1 of 1] Compiling Card             ( card.hs, interpreted )
-- Ok, 1 module loaded.
-- *Card> :t Card
-- Card :: Suit -> Rank -> Card
-- *Card> c = Card Heart Ace
-- *Card> :t c
-- c :: Card