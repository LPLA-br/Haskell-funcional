-- Tipos polimorficos

-- retorna o primeiro elemento de uma tupla x
primeiroElemento :: (a,b) -> a
primeiroElemento (x,y) = x

-- Faz nada.
prrNenhuma :: a -> a
prrNenhuma a = a

-- Tamanho de matriz de qualquer tipo
tamanho :: [a] -> Int
tamanho [] = 0
tamanho (h:t) = 1 + tamanho t

-- Primeiro elemento de uma lista de tuplas binárias
pe :: [(a,b)] -> a
pe lista = [ a | (a,b) <- lista ]

