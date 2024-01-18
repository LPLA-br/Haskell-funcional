-- condicionais lógicos
-- () empregados em prescedência e delimitações

-- k t é a mesma coisa que (expressão lógica com os dados)
maiorDeTodos :: Int -> Int -> Int
maiorDeTodos k t = if k >= t
  then k
  else t

autenticacao :: String -> String -> String
autenticacao user pass =
  if user == "Joao"
  then  if pass == "5550123"
        then "Joao logado"
        else "acesso negado: senha incorreta"
  else "usuario desconhecido"

-- guardas "guards" (atuam como um switch,case do imperativo)
-- otherwise~=default

maiorDeTodos2 :: Int -> Int -> Int
maiorDeTodos2 a b
  | a > b = a
  | b > a = b
  | otherwise = 0

epar :: Int -> Bool
epar k = if mod k 2  == 0 then True else False

--vide tabela ascii para esclarecimentos
-- && || not (e,ou)
caractereMaiOuMin :: Char -> String
caractereMaiOuMin letra
  | letra >= 'A' && letra <= 'Z'  = "MAIUSCULA"
  | letra >= 'a' && letra <= 'z'  = "minuscula"
  | otherwise = "Desconhecido"

--recurção com caso base
fatorial :: Int -> Int
fatorial n
  | n == 0 = 1 
  | n >  0 = n * (fatorial (n-1))

palavraDoDia :: Int -> String
palavraDoDia dia
  | dia == 1  = "Se feiura doesse acordavas chorando"
  | dia == 2  = "O importante nao e saber, mas ter contato de quem sabe"
  | dia == 6  = "Quanto mais pressao mais diversao (ou nao)"
  | otherwise = "Dia sem frase :-("

-- retorna peso (kg) ascensionável pelo volume de hidrogênio passado.
flutuabilidadeHidrogenio :: Float -> Float
flutuabilidadeHidrogenio p = p * forcaAscencionalH 
  where
    forcaAscencionalH = 1.2 --kg/m³ forca Ascencional do Hidrogênio.

-- vide ./locl.hs para ver a diferença entre where .. e let .. in ..

