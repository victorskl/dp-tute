-- Library Circulation Items

data PubFreq =
  Days Int | Months Int

data LibraryItem =
    Book Int String String
  | Periodical Int String PubFreq

-- Getting the title
-- Given the LibraryItem type, define a function title that will return the
-- the title of any LibraryItem

title :: LibraryItem -> String
title (Book _ title _) = title
title (Periodical _ title _) = title