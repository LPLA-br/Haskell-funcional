-- DIVISIBILIDADE - Exercícios Haskell

-- FUNÇÕES AUXILIARES

-- Verifica se um inteiro está na Lista.
em :: Int -> [Int] -> Bool
em n [] = False
em n (h:t) =
  if n == h
  then True
  else em n t

--Coversão bruta de caractere para número.
chPDigito :: Char -> Int
chPDigito c
  | c == '0' = 0
  | c == '1' = 1
  | c == '2' = 2
  | c == '3' = 3
  | c == '4' = 4
  | c == '5' = 5
  | c == '6' = 6
  | c == '7' = 7
  | c == '8' = 8
  | c == '9' = 9
  | otherwise = -1

-- converte matriz de caracteres dígito número para dígitos.
-- Não garante correção da matriz.
chTInt :: [Char] -> [Int]
chTInt [] = [0]
chTInt lista = map chPDigito lista

-- Retorna a somatória dos dígitos de um número
-- representado em string
raizDigital :: [Int] -> Int
raizDigital [] = 0
raizDigital (h:t) = h + raizDigital t


-- FUNÇÕES PRINCIPAIS


-- Verifica divisibilidade para 2 e 5
-- stringDoAlvo, 2|5
divDoisCinco :: [Char] -> Int -> Bool
divDoisCinco [] n = False
divDoisCinco (h:t) n =
  if length t /= 0  -- se t=0 então h=LSB
  then divDoisCinco t n
  else 
    if n == 2
    then
      if (em (chPDigito h) dois) == True
      then True
      else False
    else
      if (em (chPDigito h) cinco) == True && n == 5
      then True
      else False
  where
    dois = [2,4,6,8]
    cinco = [5,0]

-- verifica a divisibilidade pelo número 3
divTrez :: [Char] -> Bool
divTrez [] = False
divTrez n
  | resultado == 3 = True
  | resultado == 6 = True
  | resultado == 9 = True
  | otherwise = False
  where
    resultado = raizDigital ( chTInt n )

-- divisibilidade por nove
divNove :: [Char] -> Bool
divNove [] = False
divNove n
  | resultado == 9 = True
  | otherwise = False
  where
    resultado = raizDigital ( chTInt n )

-- divisibilidade por onze simplificada
--divOnze :: Int -> Bool
--divOnze x =
--  if resto == 0
--  then True
--  else False
--  where
--    resto = (mod x)

-- Retorna tupla com divisor e resultado para
-- averiguação de divisibilidade rápida e suja.
divide :: Float -> [(Float,Float)]
divide f = [ (f/x, x) | x <- linha ]
  where
    linha = [1..11]

-- O mesmo de cima só que com resto.
divide2 :: Int -> [(Int,Int)]
divide2 f = [ ((mod f x),x) | x <- numeros ]
  where
    numeros = [1..11]
