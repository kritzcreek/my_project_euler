--The solution to Project Euler Problem 3

import Data.List
import Data.Maybe

isPrime:: Integer -> Bool
isPrime x = (length $ filter (divides x) [1.. x]) == 2

divides :: Integer -> Integer -> Bool
divides x n = (mod x n) == 0

solve :: Integer -> Integer -> Integer
solve 1 soFar = soFar
solve n soFar = solve rest newSoFar where
  divisor = find (divides n)(filter isPrime [1..n])
  rest = quot n (fromJust divisor)
  newSoFar = max soFar (fromJust divisor)

main :: IO ()
main = do
  putStrLn $ show $ solve 600851475143 0
