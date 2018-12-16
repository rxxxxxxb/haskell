{-- In this exercise we want to convert 
between binary and decimal number representations
by Horner's method. --}

decToBinList :: Int -> [Bool]
decToBinList 1 = [True]
decToBinList v 
              | even v = decToBinList(div v 2) ++ [False]
              | odd v  = decToBinList(div (v-1) 2) ++ [True] 

listToDec :: [Bool] -> Int              
listToDec xs = listToDec' 0 xs
    where
        listToDec' i [x] = if x == True then i + 1 else i
        listToDec' i (x:xs) =
            if x
                then listToDec' (2 * (i + 1)) xs
                else listToDec' (2 * i)       xs
        
