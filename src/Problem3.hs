module Problem3 where

largestPrimeLessThan n = let primeSearcher current target
                               | current >= target = target
                               | target `rem` current == 0 = primeSearcher (current+1) (target/current)
                               | otherwise primeSearcher (current+1) target
                         in primeSearcher 2 n

