module Problem1 where

isMultipleOf3or5 x where
  | x mod 3 == 0 || x mod 5 == 0 = True
  | _ = False

sumLessThanN n where
  | isMultipleOf3or5 n = n + sumLessThanN n - 1
  | _ = sumLessThanN n - 1
sumLessThanN 0 = 0
