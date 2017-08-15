module Card where

data Suit = Club | Diamond | Heart | Spade
    deriving Eq

data Rank =
    R2 | R3 | R4 | R5 | R6 | R7 | R8 | R9 | R10 |
    Jack | Queen | King | Ace
    deriving (Eq, Ord)

data Card = Card Suit Rank
    deriving Eq

showrank :: Rank -> String
showrank R2    = "2"
showrank R3    = "3"
showrank R4    = "4"
showrank R5    = "5"
showrank R6    = "6"
showrank R7    = "7"
showrank R8    = "8"
showrank R9    = "9"
showrank R10   = "T"
showrank Jack  = "J"
showrank Queen = "Q"
showrank King  = "K"
showrank Ace   = "A"

instance Show Rank where show = showrank

instance Show Suit where
  show Club    = "C"
  show Diamond = "D"
  show Heart   = "H"
  show Spade   = "S"

instance Show Card where
  show (Card suit rank) = show rank ++ show suit

f :: Card
f = Card Spade Ace


-- Prelude> :load card4.hs
-- [1 of 1] Compiling Card             ( card4.hs, interpreted )
-- Ok, 1 module loaded.
-- *Card> :t showrank
-- showrank :: Rank -> String
-- *Card> showrank Queen
-- "Q"
-- *Card> :t show
-- show :: Show a => a -> String
-- *Card> :t f
-- f :: Card
-- *Card> f
-- AS
-- *Card> c = Card Diamond King
-- *Card> c
-- KD
-- *Card> show Club
-- "C"
-- *Card> :t Club
-- Club :: Suit
-- *Card> :t King
-- King :: Rank
-- *Card> show King
-- "K"
