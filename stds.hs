-- casamento de padrões

p :: Int -> String
p 1 = "Um"
p 2 = "Dois"
p 3 = "tres"
p x = "não é 1,2 ou 3" -- x é qualquer número não igual a 1,2 ou 3

-- retorna dez para qualquer entrada de qualquer tipo.
dez :: Int -> Int
dez _ = 10

-- retorna primeiro elemento de uma lista. o resto não importa
primeiro :: [x] -> x
primeiro (h:_) = h

-- pega os N primeiros elementos da lista passada.
-- recurção com dois casos base de qualquer coisa.
-- pega os N primeiros elementos de uma lista.
pega :: Int -> [Int] -> [Int]
pega 0 _      =    []
pega _ []     =    []
pega n (h:t)  =  h : pega (n-1) t

-- implementação alternativa com case of
-- observe o casamento
pega2 :: Int -> [Int] -> [Int]
pega2 numero matriz =
  case (numero,matriz) of
    (0,_ )      -> []
    (_,[])      -> []
    (n,h:t)     -> h : pega2 (n-1) t

-- duplica o primeiro elemento de uma lista de inteiros
-- (primeiroElemento:restoDalista) -> (tipo,[tipo])
-- emprego do operador construtor de listas.
f :: [Int] -> [Int]
f [] = []
f (h:t) = h:h:t

-- emprego do operador de concatenação de listas ++.
dobrarLista :: [Int] -> [Int]
dobrarLista [] = []
dobrarLista (h:t) = h:t ++ h:t

dobrarSemPrimeiro :: [Int] -> [Int]
dobrarSemPrimeiro [] = []
dobrarSemPrimeiro (h:t) = t ++ t

-- equivale à função acima
-- todaLista@(primeiroElemento:restoDalista)
dobrarSemPrimeiroAlt :: [Int] -> [Int]
dobrarSemPrimeiroAlt [] = []
dobrarSemPrimeiroAlt lista@(h:t) = h:lista


