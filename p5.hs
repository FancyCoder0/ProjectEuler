
ans = foldr1 lcm [1..20]

{-
ans = head [x | x <- [1..], checkDivide x 20]

checkDivide :: Int -> Int -> Bool

checkDivide x y
    | y == 1 = True
    | x `mod` y == 0 = checkDivide x (y - 1)
    | otherwise = False
-}