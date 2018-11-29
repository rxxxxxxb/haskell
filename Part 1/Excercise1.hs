exponentiation :: Int -> Int -> Int
exponentiation _ 0 = 1
exponentiation b e = b * exponentiation b (e-1)


optExponentiation :: Int -> Int -> Int
optExponentiation _ 0 = 1

optExponentiation b e = 
    let sqr = optExponentiation b (e `div` 2) * optExponentiation b (e `div` 2) 
    in if even e then sqr
    else b * sqr