ans = maximum [t | t <- [ x * y | x <- [100 .. 999], y <- [100 .. 999]], isPalindrome(t)]

isPalindrome :: Int -> Bool

isPalindrome x
    | s == reverse s = True
    | otherwise = False
    where s = show x