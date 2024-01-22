-- gravitação universal

-- F=G*(m1*m2/d²)
gu :: Float -> Float -> Float -> Float
gu ma mb d = g * ( (ma*mb)/(d*d) )
  where
    g = 0.00000000006674081 

