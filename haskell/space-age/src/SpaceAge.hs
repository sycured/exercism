module SpaceAge
  ( Planet(..)
  , ageOn
  )
where


data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

-- ageOn :: Planet -> Integer -> Float
-- ageOn planet seconds = fromInteger seconds / orbitalPeriod planet

-- orbitalPeriod :: Planet -> Float
-- orbitalPeriod planet = 31557600 * factor where
--   factor = case planet of
--     Earth   -> 1.0
--     Jupiter -> 11.862615
--     Mars    -> 1.8808158
--     Mercury -> 0.2408467
--     Neptune -> 164.79132
--     Saturn  -> 29.447498
--     Uranus  -> 84.016846
--     Venus   -> 0.61519726

ageOn :: Planet -> Float -> Float
ageOn planet seconds = earth_years / case planet of
  Mercury -> 0.2408467
  Venus   -> 0.61519726
  Earth   -> 1.0
  Mars    -> 1.8808158
  Jupiter -> 11.862615
  Saturn  -> 29.447498
  Uranus  -> 84.016846
  Neptune -> 164.79132
  where earth_years = seconds / 31557600
