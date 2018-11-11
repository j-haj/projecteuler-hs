module Problem1 where

isMultipleOf3or5 :: (Integral a) => a -> Bool
isMultipleOf3or5 x
  | x `mod` 3 == 0 || x `mod` 5 == 0 = True
  | otherwise = False

sumLessThanN :: (Integral a) => a -> a
sumLessThanN n = sumHelper 0 n where
    sumHelper acc 0 = acc
    sumHelper acc n = if isMultipleOf3or5 n
      then sumHelper (n+acc) (n-1)
      else sumHelper acc (n-1)
