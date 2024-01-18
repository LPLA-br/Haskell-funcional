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
-- resultado para a mesma entrada.
-- (dominio[entradas]) (contraDominio imagem[saídas] )

-- enfoque em expressões e não em comandos, etapas.

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



