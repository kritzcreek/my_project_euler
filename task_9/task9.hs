-- This is the solution to Project Euler Problem 9

prodOfTriplet :: [(Int, Int, Int)] -> Int
prodOfTriplet [(a,b,c)] = a*b*c

triplet :: [(Int, Int, Int)]
triplet = take 1[(a,b,c) | a <- [1..1000], b <- [1..1000], c <- [1..1000], a < b, b < c,((a*a)+ (b*b)) == (c*c), a+b+c == 1000]

main :: IO ()
main = do
  putStrLn $ show $ prodOfTriplet triplet
