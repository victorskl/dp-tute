-- compare with expr.c and Expr.java

data Expr
  = Number Int
  | Variable String
  | Binop Binop Expr Expr -- why Binop Binop? the first one is Data Constructor, the second is Type. Anything after that Data Constructor is Type.
  | Unop Unop Expr

data Binop = Plus | Minus | Times | Divide
data Unop = Negate