module Pangram
  ( isPangram
  )
where

import           Data.Char                      ( toLower )

isPangram :: String -> Bool
isPangram text = all (`elem` fixedText) ['a' .. 'z']
  where fixedText = map toLower text
