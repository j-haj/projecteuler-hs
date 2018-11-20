module Problem2 where

sumEvenFibsLE :: (Integral a) => a -> a
sumEvenFibsLE n = let sumFibHelper acc f0 f1 max
                        | cur > max = acc
                        | cur `mod` 2 == 0 = sumFibHelper (acc+cur) f1 cur max
                        | otherwise = sumFibHelper acc f1 cur max
                        where cur = f0 + f1
                      in
                  sumFibHelper 0 0 1 n
