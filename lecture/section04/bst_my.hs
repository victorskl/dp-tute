-- Binary search tree in Haskell
data Tree = Leaf | Node String Int Tree Tree

-- Counting nodes in a BST
countnodes :: Tree -> Int
countnodes Leaf = 0
countnodes (Node _ _ l r) = 1 + (countnodes l) + (countnodes r)

-- Searching a BST in Haskell

search_bst :: Tree -> String -> Maybe Int
search_bst Leaf _ = Nothing
search_bst (Node k v l r) sk =
  if sk == k then
    Just v
  else if sk < k then
    search_bst l sk
  else
    search_bst r sk

-- If the search succeeds, this function returns Just v, where v is the searched-for value.
-- If the search fails, it returns Nothing.