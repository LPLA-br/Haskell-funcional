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

-- :: pode ser lido como "tem tipo"

--FUNÇÕES

quadrado :: Int -> Int
quadrado x = x*x

cubo :: Int -> Int
cubo x = x*x*x

-- in,in,out
soma2 :: Float -> Float -> Float
soma2 a b = a+b

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

-- ABSTRAÇÕES LAMBDA (FUNÇÕES "ANÔNIMAS")
dobra x = x*x
incremento x = x+1
soma a b = a + b
fatorial x = x + fatorial x-1
-- encurtando o máximo possível !!!
dobra2 = \x -> x*x
subracao = \x y -> x-y

-- OPERADORES INFIXOS ( A FUNCAOOPERADORIFORME B )
-- Gramática: prefixo-radical-infixo-sufixo
-- operando operador←(infixo) operando

--exemplo da definição do operador de concatenação de listas:
-- (++) :: [a] -> [a] -> [a]
-- []          ++ b           = b
-- (head:tail) ++ b           = head : (tail++b)

-- novo operador maluco de concatenação.
(<><>) :: [a] -> [a] -> [a]
[]          <><> b           = b
(head:tail) <><> b           = head : (tail <><> b) --recurção implícita

-- novo operador maluco de soma dobrada
(+&+) :: Int -> Int -> Int
a +&+ b = (a+b)*2

-- operador maluco de composições de funções.
-- atenção: 'b' retorna 'c' e 'a' chama 'b'
-- logo (...) retorna função onde 'a' fará sua ação
-- e passará o resultado para b.
-- RETORNA: função aplicavel à identificador
(...) :: (b->c) -> (a->b) -> (a->c)
alpha ... beta = \ x -> alpha (beta x)

-- --exemplos de uso do compositor:
-- x = dobra ... dobra
-- x 10
-- 1000
--
-- k = incremento ... dobra
-- k 10
-- 101
-- --k equivale a: incremento(dobra(10))
--
-- k = dobra ... incremento
-- k 10
-- 121
-- --k equivale a: dobra(incremento(10))
-- 
-- ← composição resolve-se da direita para esquerda ! ←

-- operador padrão de composição de funções em Haskell é . (ponto final)
