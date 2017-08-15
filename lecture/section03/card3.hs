-- vim: ts=4 sw=4 expandtab syntax=haskell

module Card where

data Suit = Club | Diamond | Heart | Spade
    deriving (Eq, Show)

data Rank =
    R2 | R3 | R4 | R5 | R6 | R7 | R8 | R9 | R10 |
    Jack | Queen | King | Ace
    deriving (Eq, Show)

data Card = Card Suit Rank
    deriving (Eq, Show)

f :: Card
f = Card Spade Ace

-- *Card> :load card3.hs
-- [1 of 1] Compiling Card             ( card3.hs, interpreted )
-- Ok, 1 module loaded.
-- *Card> :t f
-- f :: Card
-- *Card> f
-- Card Spade Ace
-- *Card> m = Card Diamond King
-- *Card> m
-- Card Diamond King
-- *Card> :t m
-- m :: Card
-- *Card> show Diamond
-- "Diamond"
-- *Card> :t Diamond
-- Diamond :: Suit
-- *Card> show Jack
-- "Jack"
-- *Card> :t Jack
-- Jack :: Rank
