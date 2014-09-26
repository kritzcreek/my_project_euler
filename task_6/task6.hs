-- This is the solution to Project Euler Problem 6

square :: Int -> Int
square x = x*x

result :: Int
result = (square $ sum [1..100]) - (sum $ map square [1..100])

main :: IO ()
main = do
  putStrLn $ show result
