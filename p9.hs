ans = product . head $ [[a, b,c] | c <- [1..1000], b <- [1..c], let a = 1000 - b - c, a ^ 2 + b ^ 2 == c ^ 2]

