-- recursão
-- estruturas de repetição while ou for náo existem aqui
-- pois não há variáveis e não é possível controlar estado do programa.

somadinha :: Int -> Int -> Int -> Int
somadinha controle valor add
  | controle == 0 = valor-1 --caso base da última chamada recursiva.
  | otherwise = somadinha (controle-1) (valor+add) add

--recursiva (constroi a respostas pelos retornos recurivos)
pot1 :: Int -> Int
pot1 n
  | n == 0  = 1
  | n >  0  = 2 * pot1 (n-1)

--em cauda (não constroi a resposta operando retornos recursivos)
pot2 :: Int -> Int -> Int
pot2 n acomulador
  | n == 0  = acomulador
  | n >  0  = pot2 (n-1) (2*acomulador)


