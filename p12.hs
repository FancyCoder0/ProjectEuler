numDivisors n | n == x * x = num * 2 - 1
              | otherwise = num * 2
              where  x = floor . sqrt . fromIntegral $ n
                     num = length([x | x <- [1..x], n `mod` x == 0])

ans = head $ [n | n <- [n0 * (n0 + 1) `div` 2 | n0 <- [1..]],  numDivisors(n) > 500]

