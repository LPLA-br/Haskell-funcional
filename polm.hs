-- Tipos polimorficos
-- casamento de padrões para emprego de qualquer tipo

-- retorna o primeiro elemento de uma tupla de dois elementos.
primeiroElemento :: (a,b) -> a
primeiroElemento (x,y) = x

-- Faz nada para elemento de tipo X.
prrNenhuma :: a -> a
prrNenhuma a = a

-- Tamanho de matriz de qualquer tipo.
tamanho :: [a] -> Int
tamanho [] = 0
tamanho (h:t) = 1 + tamanho t

-- Primeiro elemento de uma lista de tuplas de dois elementos. 
pe :: [(a,b)] -> a
pe lista = [ a | (a,b) <- lista ]

