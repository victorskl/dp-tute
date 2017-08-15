
-- Switching on alternative

-- You do not have to have separate equations for each possible shape of the arguments.
-- You can test the value of a variable (which may or may not be the value of an argument)
-- in the body of an equation, like this:

is_static :: Expr -> Bool
is_static expr =
  case expr of
    Number _ -> True
    Variable _ -> False
    Unop _ expr1 -> is_static expr1
    Binop _ expr1 expr2 ->
      is_static expr1 && is_static expr2


-- This function figures out whether the value of an expression can be known statically,
-- i.e. without having to know the values of variables.