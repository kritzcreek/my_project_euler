--This is the solution to Euler Problem 1

divisibleByN :: Int -> Int -> Bool
divisibleByN x n = n `mod` x == 0

solve::Int -> Int
solve n = sum [x | x <- [1..n], divisibleByN 3 x || divisibleByN 5 x]

main :: IO()
main = do
  putStrLn $ show $ solve 999
