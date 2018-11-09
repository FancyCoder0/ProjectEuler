import Data.Char
ans = sum . map digitToInt . show . product $ [1..100]
