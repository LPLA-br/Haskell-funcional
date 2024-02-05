-- gravitação universal

-- F=G*(m1*m2/d²)
gu :: Float -> Float -> Float -> Float
gu ma mb d = g * ( (ma*mb)/(d*d) )
  where
    g = 0.00000000006674081 

-- variando distância.
av1 :: Float -> Float -> [Float] -> [Float]
av1 ma mb [] = 0
av1 ma mb (h:t) = gu (ma mb h) + av1 ma mb t

