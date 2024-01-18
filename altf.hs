-- funções de alta ordem

dobra :: Int -> Int
dobra v = v+v

triplica :: Int -> Int
triplica v = v+v+v

-- alta ordem (construção de nova lista recursivamente)
dobraLista :: [Int] -> [Int]
dobraLista [] = []
dobraLista (h:t) = (dobra h) : (dobraLista t)

-- alta ordem de função (callback)
-- aplica qualquer função Int -> Int em todos os elementos
-- da lista passada.
mapear :: (Int -> Int) -> [Int] -> [Int]
mapear _ []         =   []
mapear funcao (h:t) =   (funcao h) : (mapear funcao t)

divisivelPorDois :: Int -> Bool
divisivelPorDois n
  | mod n 2 == 0 =    True
  | otherwise =       False

-- retorna lista com dados que satifazem função
-- verificatória Int -> Bool
filtrar :: (Int -> Bool) -> [Int] -> [Int]
filtrar _ [] =   []
filtrar funcao (h:t)
  | (funcao h) == True =    h : (filtrar funcao t)
  | otherwise = (filtrar funcao t)


