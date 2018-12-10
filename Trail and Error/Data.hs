
data Rank = Ten
        | Jack 
        | Queen
        | King
        | Ace
    deriving (Eq, Enum, Ord, Bounded, Read,Show)   

-- enum :     
-- eq : equality check : Ten == Ace
-- Ord : Order check : Ten > Ace
-- bounded : gives us max or min values. : minBound :: Rank
-- Show : Necessary for haskell to print a rank
-- enum : Make ranges of ranks:   [Ten .. King]
-- Read : Type specified, Read a rank from a string: read "Jack" :: Rank

