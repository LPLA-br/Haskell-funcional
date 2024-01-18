-- LISTA
-- estrutura de dados de vários elementos de um tipo só.
-- ghci
-- 8:[1,2]  = [8,1,2]   : operador construtor de listas (append).
-- [1..4]   = [1,2,3,4]
-- [1,3..5] = [1,3,5]
-- funções: head,tail HTTTTTT
-- [1] ++ [2,3] = [1,2,3]   ++ operador concatenador (Strings e Listas)

-- A FUNÇÃO map

-- Exemplos de tipos de listas.
-- [[Int]]                lista de listas de inteiros
-- [(String,Int)]         lista de tuplas
-- [Float->Float->Float]  lista de funções
-- []                     lista vazia

-- ATENÇÃO: observe o que tua função deve retornar

--map em listas
absolutar :: [Int] -> [Int]
absolutar l = map abs l

-- Trabalho com lista só é possível por recursão
-- (h:t) é inferido pela linguagem como sendo head e tail
tamanhoLista :: [Int] -> Int
tamanhoLista [] = 0 --lista resultante de tail vazia é o caso base inferido por haskell.
tamanhoLista (h:t) = 1 + tamanhoLista t -- chamadas recursivas com tail cada vez menor.
--retorno final de Int (U A U!)

--passa tail e soma-se heads correntes
somatoria :: [Int] -> Int
somatoria []    = 0
somatoria (h:t) = h + somatoria t

-- retorna True para o primeiro encontro
temLetra :: [Char] -> Char -> Bool
temLetra []     letra = False
temLetra (h:t)  letra
  | h == letra  = True
  | otherwise   = temLetra t letra

-- retorna número de ocorrências de uma string em uma lista
numOcorrencias :: [String] -> String -> Int
numOcorrencias [] palavra = 0
numOcorrencias (h:t) palavra =
  if h == palavra
  then 1 + numOcorrencias t palavra
  else 0 + numOcorrencias t palavra

-- retorna o número de strings >= tamanho exigido
tamanhoCerto :: [String] -> Int -> Int
tamanhoCerto [] tam = 0
tamanhoCerto (h:t) tam =
  if length h >= tam
  then 1 + tamanhoCerto t tam
  else 0 + tamanhoCerto t tam

-- retorna lista de strings com o tamanho correto
sTamanhoCerto :: [String] -> Int -> [String]
sTamanhoCerto [] tam = []
sTamanhoCerto (h:t) tam =
  if length h >= tam
  then h : sTamanhoCerto t tam
  else sTamanhoCerto t tam
 
maiorNum :: [Int] -> Int
maiorNum [] = -1
maiorNum (h:t) =
  if h >= novoNum
  then h
  else novoNum
  where
    novoNum = maiorNum t

-- COMPREENÇÃO DE LISTAS

pares :: Int -> [Int]
pares n = [n*x | x <- [0 .. 10]] -- n*x tal que x entre 0 e 10

paresInfinitos :: Int -> [Int]
paresInfinitos n = [n*x | x <- [0,1 ..]] -- n*x tal que x entre 0 e INFINITO SOB DEMANDA

multiplos :: Int -> [Int]
multiplos n = [n*x | x <- [1 .. 10]]

-- retorna lista de valores que respeitam intervalo.
intervalo :: [Int] -> Int -> Int -> [Int]
intervalo [] ini fin = []
intervalo  l ini fin = [ x | x <- l, x >= ini, x <= fin ]

