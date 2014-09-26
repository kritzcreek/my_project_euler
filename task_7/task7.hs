-- This is the solution to Project Euler Problem 7

sieve :: [Int] -> [Int]
sieve (l:ls) = l:sieve[x | x <- ls, mod x l /= 0]

main :: IO ()
main = do
  putStrLn $ show $ (sieve [2..]) !! 10000
