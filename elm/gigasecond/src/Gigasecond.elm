module Gigasecond exposing (add)

import Time


sec_to_ms : Int -> Int
sec_to_ms x =
    x * 1000


gigasecond : Int
gigasecond =
    10 ^ 9


add : Time.Posix -> Time.Posix
add timestamp =
    Time.millisToPosix (Time.posixToMillis timestamp + sec_to_ms gigasecond)
