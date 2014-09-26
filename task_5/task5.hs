-- This is the solution to Project Euler Problem 5

kgV :: Int -> Int -> Int
kgV m n
  | m <= 0 = error "..."
  | n <= 0 = error "..."
  | otherwise = (m * n) `div` (ggT m n)

ggT :: Int -> Int -> Int
ggT m n
  | m > n     = ggT (m-n) n
  | m < n     = ggT m (n-m)
  | otherwise = m

main :: IO ()
main = do
  putStrLn $ show $ foldl kgV 1 [1..20]
