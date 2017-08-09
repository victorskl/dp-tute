-- Definition A
iota n = if n == 0 then [] else iota (n-1) ++ [n]

-- Definition B
iota2 n
  | n == 0 = []
  | n > 0 = iota2 (n-1) ++ [n]

-- Definition B uses guards to specify cases.
-- Note the first line does not end with an "=";
-- each guard line specifies a case and the value for that case,
-- much as in definition A.

-- Note that the second guard specifies n > 0.

-- What should happen if you do iota (-3)?
-- Main> iota2 (-3)
--   *** Exception: if_guard.hs:(5,1)-(7,30): Non-exhaustive patterns in function iota2

-- What do you expect to happen?

-- What about for definition A?
-- *Main> iota (-3)
--   *** Exception: stack overflow

-- ------
-- Structured definitions - Offside Rule
--
-- Some Haskell functions do not fit on one line, and even the ones that do
-- fit are often better split across several. Guards are only one example of this.

-- Definition C
iota3 n =
  if n == 0
  then
    []
  else
    iota3 (n-1) ++ [n]

-- The offside rule says that
-- 1. the keywords 'then' and 'else', if they start a line, must be at the same
--    level of indentation as the corresponding 'if', and
-- 2. if the 'then' and 'else' expressions are on their own lines,
--    these must be more indented than those keywords.