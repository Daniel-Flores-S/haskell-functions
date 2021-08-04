-- Elaborar em Haskell uma função para converter um número N decimal para número romano. Considere N>=0 e N<1000.

romano:: [String]
romano =
   ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
numero:: [Int]
numero= [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
pair :: [(Int, String)]
pair = zip numero romano 
 
subtrahend :: Int -> (Int, String)
subtrahend n = head (dropWhile (\(a, _) -> a > n) pair)
 
convert :: Int -> String
convert 0 = ""
convert n = let (rome, m) = subtrahend n in m ++ convert (n - rome)
