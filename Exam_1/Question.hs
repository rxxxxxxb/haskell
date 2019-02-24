{- Define a polymorphic data type for node-labeled trees 
that allows nodes with up to two child nodes, that is, 
nodes with only one or no child node should also be possible. -}

data Tree a = Empty
            | Node1 (Tree a)
            | Node2 (Tree a) (Tree a)