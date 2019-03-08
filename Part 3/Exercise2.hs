data SearchTree a = Empty
                    | Branch (SearchTree a) a (SearchTree a)
                deriving(Show)    


insert :: (a -> a -> Ordering) -> a -> SearchTree a -> SearchTree a                 
insert _ val Empty = Branch Empty val Empty
insert cmp val (Branch l n r) 
            | cmp val n == EQ = Branch l n r   
            | cmp val n == LT = Branch (insert cmp val l) n r
            | otherwise     = Branch l n (insert cmp val r)


-- Check fo an element of an array
isElem :: (a -> a -> Ordering) -> a -> SearchTree a -> Bool
isElem cmp x Empty = False
isElem cmp x (Branch l n r)
            | cmp x n == EQ = True
            | cmp x n == LT = (isElem cmp n l)
            | otherwise     = (isElem cmp n r)



tree :: SearchTree Int 
-- tree = Branch (Empty) 10 (Empty)                   
tree = Branch (Branch Empty 10 Empty) 20 (Branch Empty 30 Empty)


