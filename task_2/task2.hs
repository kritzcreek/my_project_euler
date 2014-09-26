-- This is the solution to Project Euler Task 2

fibNumber :: Int -> Int
fibNumber x = case x of
                   0 -> 1
                   1 -> 1
                   _ -> fibNumber (x-1) + fibNumber (x-2)

fibNumbers :: [Int]
fibNumbers = map fibNumber [1..]

solve :: Int -> Int
solve x = sum $ filter even $ takeWhile (<x) fibNumbers

main :: IO ()
main = do
  putStrLn $ show $ solve 4000000
