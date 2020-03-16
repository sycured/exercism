module LeapYear
  ( isLeapYear
  )
where

isLeapYear :: Integer -> Bool
isLeapYear year | isDivBy 400 = True
                | isDivBy 100 = False
                | isDivBy 4   = True
                | otherwise   = False
  where isDivBy c = year `mod` c == 0
