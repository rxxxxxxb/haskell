
data Tree a = Leaf a 
            | Branch (Tree a) (Tree a)

-- counts the number of leaves
count :: Tree a -> Int
count (Leaf x) = 1
count (Branch l r)  = count l + count r



-- similar to map on lists
mapTree :: (a -> b) -> Tree a -> Tree b
mapTree = undefined

-- converts a tree into a list containing all values of the tree
treeToList :: Tree a -> [a]
treeToList = undefined

-- converts a list into a tree containing all values of the list;
--  the tree can be completely unbalanced
listToTree :: [a] -> Tree a            
listToTree = undefined


t1 = Branch (Leaf 3) (Leaf 8) 