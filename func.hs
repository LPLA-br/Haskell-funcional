-- executar este código
-- $ ghci
-- > :load [ARQUIVO.hs]

-- Int, Float, Double, Bool, Char
-- + - / * ^ div=divisãoInteira mod=resto
-- abs
-- lcm=MMC
-- /= diferenteDe

-- igual é atribuição em imperativa x = 10; x = x+1;
-- igual é equivalência expressiva em funcional x = x*x (x é a mesma coisa que x²)

-- O conceito de variável não existe.
-- Temos, na verdade, um conjunto infinito de
-- valores possíveis para uma entrada. Logo
-- não definimos ou mudamos valores (imutabilidade).

-- funções puras retornam sempre o mesmo
-- resultado para a mesma entrada (DETERMINISMO).
-- (dominio[entradas]) (contraDominio imagem[saídas] )

-- DECLARATIVO/imperativo

-- chamadas de funções Haskell/C
-- g h (f 1)    = g(h,f(1))
-- g (h (f 1))  = g(h(f(1)))
-- a x + b x    = a(x) + b(x)
-- f (a + g b)  = f(a+g(b))

dobra x = x*x

quadrado :: Int -> Int
quadrado x = x*x

cubo :: Int -> Int
cubo x = x*x*x

-- in,in,out
soma :: Float -> Float -> Float
soma a b = a+b

triplica :: Int -> Int
triplica x = x*3

areaCirculo :: Float -> Float
areaCirculo raio = raio*raio*pi

hipotenusa :: Float -> Float -> Float
hipotenusa cata catb = sqrt (cata*cata + catb*catb)

diffRaio :: Float -> Float -> Float
diffRaio ra rb = (areaCirculo ra) - (areaCirculo rb)

--retorna uma string com sub string repetida
repetirString :: String -> Int -> String
repetirString s i =
  if length s == 0
  then s
  else
    if i /= 0
    then s ++ repetirString s (i-1)
    else s

--A mesma função anterior com dupla recurção
perigo :: String -> Int -> String
perigo s i =
  if length s == 0
  then s
  else
    if i /= 0
    then s ++ perigo s (i-1) ++ perigo s (i-1)
    else s

