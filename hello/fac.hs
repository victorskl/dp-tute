-- double dash is comment
-- inside ghci
-- Prelude> let fac n = if n == 0 then 1 else n * fac (n-1)
-- using Hugs
-- Prelude> :load fac.hs
fac n = if n == 0 then 1 else n * fac (n-1)
