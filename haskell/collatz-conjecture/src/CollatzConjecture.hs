module CollatzConjecture
  ( collatz
  )
where

collatz :: Integer -> Maybe Integer
collatz x | x <= 0    = Nothing
          | otherwise = collatzHelper 0 x

collatzHelper :: Integer -> Integer -> Maybe Integer
collatzHelper t x | x == 1    = Just t
                  | even x    = collatzHelper (t + 1) (x `div` 2)
                  | otherwise = collatzHelper (t + 1) (x * 3 + 1)
