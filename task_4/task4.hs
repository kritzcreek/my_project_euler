-- Solution to Project Euler Problem 4

isPalindrom :: String -> Bool
isPalindrom s = s == reverse s

allPalindromes :: [(Integer, Integer)]
allPalindromes = [(x,y) |x<-threeDigitNumbers
                        ,y<-threeDigitNumbers
                        ,isPalindrom $ show (x*y)]
  where
    threeDigitNumbers = [100..999]

multiplyTuple :: (Integer, Integer) -> Integer
multiplyTuple (x, y) = x * y

main :: IO ()
main = do
  putStrLn $ show $ maximum $ map multiplyTuple allPalindromes
