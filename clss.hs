-- classes
-- functores

x `elem` []     = false
x `elem` (h:t)  = x == h || ( x `elem` t )

