
data Tree a = Leaf a 
            | Branch (Tree a) (Tree a)
        deriving (Show)    

-- counts the number of leaves
count :: Tree a -> Int
count (Leaf x) = 1
count (Branch l r)  = count l + count r



-- similar to map on lists
mapTree :: (a -> b) -> Tree a -> Tree b
mapTree func (Leaf x)     = Leaf (func x)
mapTree func (Branch l r) = Branch (mapTree func l) (mapTree func r)

-- converts a tree into a list containing all values of the tree
treeToList :: Tree a -> [a]
treeToList (Leaf x)     = [x]
treeToList (Branch l r) = (treeToList l) ++ (treeToList r) 

-- converts a list into a tree containing all values of the list;
--  the tree can be completely unbalanced
listToTree :: [a] -> Tree a            
listToTree [] = error "Error"
listToTree [x]  = (Leaf x)
listToTree (x:xs) = Branch (Leaf x) (listToTree xs) 





t1   = Branch (Leaf 3)  (Leaf 8) 
t2   = Branch (Leaf 30) (Leaf 80)
tree = Branch (t1) (t2)