-- definições locais com where

areaTrianguloHeron :: Float -> Float -> Float -> Float
areaTrianguloHeron a b c = sqrt ( s*(s-a)*(s-b)*(s-c) )
  where
    s = (a+b+c)/2

gradiente :: Int -> Int
gradiente a = a*10+b
  where
    b = (a+a)

pontua :: String -> String
pontua frase = frase ++ " " ++ ponto
  where
    ponto = "." --função

calcAleat1 :: Int -> Int -> Int
calcAleat1 a b
  | a > 10 = a*b*( quadrado a )
  | otherwise = 0
  where
    quadrado x = x*x
    k = a*( quadrado b )
    p = 10
    
eq2numRaizesReais :: Float -> Float -> Float -> Float
eq2numRaizesReais a b c
  | delta >  0 = 2
  | delta == 0 = 1
  | otherwise  = 0
  where
    quadrado x = x*x
    delta = ( quadrado b )*4*a*c

-- let DEFINIÇÕES in EXPRESSÃO
areaCilindro :: Float -> Float -> Float
areaCilindro raio altura =
  let areaBase = pi * ( raio^2 )
      areaLateral = 2 * pi * raio * altura
  in  areaBase*2 + areaLateral

-- where no fim e let no comesso.

areaTrianguloHeron2 :: Float -> Float -> Float -> Float
areaTrianguloHeron2 a b c =
  let s = (a+b+c)/2
  in sqrt ( s*(s-a)*(s-b)*(s-c) )

-- número grande de definições use "where". otherwise "let"

