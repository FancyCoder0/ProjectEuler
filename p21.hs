anotherSumDivisors n | n == x * x = s - x - n
                     | otherwise = s - n
                     where  x = floor . sqrt . fromIntegral $ n
                            s = sum [d + n `div` d | d <- [1..x], n `mod` d == 0]

ans = sum [n | n <- [1..9999], let x = anotherSumDivisors(n), x /= n, anotherSumDivisors(x) == n]
