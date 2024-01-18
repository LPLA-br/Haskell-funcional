--TUPLA
-- estrutura de dados heterogênea
-- ("Luiz",1950) --pode ter tipos diferentes.
-- (1950,"Luiz") não é igual à tupla expressa acima
-- A ordem importa !
-- tuplas de dois elementos são chamados par.
-- fst e snd acessam, respectivamente o primeiro e último.

--type Aluno = (String, Int) -- (Nome, nota)

--------------------------------------------------------

type Diametro = Int -- legibilidade
type Nome = String  -- legibilidade

type Planeta = (Nome,Diametro)
type SistemaPlanetario = [Planeta]

-- retorna o nome de todo planeta com diâmetro maior que 4800 km
-- casamento de padrão ocorre em (nome,diametro)
classificaComoPlaneta :: SistemaPlanetario -> [Nome]
classificaComoPlaneta sistema = [nome | (nome,diametro) <- sistema, diametro > limite]
  where
    limite = 4800

type Nota = Int

type Aluno = (Nome,Nota)
type Turma = [Aluno]

--funções em tuplas com exemplos de casamento de padrões:

-- retorna lista de alunos aprovados
passados :: Turma -> [Nome]
passados [] = []
passados turma = [ a | (a,b) <- turma, b >= 60 ]

nomeAluno :: Aluno -> String
nomeAluno (a,b) = a

-- retorna lista com nomes dos alunos. 
nomesAlunos :: [Aluno] -> [String]
nomesAlunos [] = []
nomesAlunos lista = [ sujeito | (sujeito,notinha) <- lista ]

--retorna posição reversa do primeiro aluno que casa com padrão passado.
aluno :: [String] -> String -> Int
aluno [] p = 0
aluno (h:t) padrao =
  if h == padrao
  then length t + 1
  else aluno t padrao

--retorna posições reversas dos alunos que casam com o padrão passado.
aluno2 :: [String] -> String -> [Int]
aluno2 [] p = []
aluno2 (h:t) padrao =
  if h == padrao
  then length t + 1 : aluno2 t padrao
  else aluno2 t padrao

