data Tree k v = Leaf | Node k v (Tree k v) (Tree k v)
    deriving (Eq, Show)

same_shape :: Tree a b -> Tree c d -> Bool

same_shape Leaf Leaf = True
same_shape Leaf (Node _ _ _ _) = False

