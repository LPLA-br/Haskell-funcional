--  MONADS
--  Um Monad não:
--  Define funções impuras
--  Cria e gerencia estados de sistema
--  Permite sequenciamento imperativo
--  Define IO
--  É dependente de avaliação preguiçosa
--  É uma porta dos fundos para efeito colateral
--  É uma linguagem imperativa dentro do Haskell
--  Necessita de conhecimento de matemática abstrata para entender
--  Exclusivos do Haskell

--OPERADORES RELACIONADOS
-- putStr >> input >>= x = putStrLn
-- O operador >> sequencia e ignora o valor interno do monad à
-- esquerda e o operador >>= sequencia e chama a função à direita
-- passando o conteúdo do monad e exige que outro monad seja
-- retornado para poder continuar compondo.
-- do ...

main :: IO ()
main = putStr "Qual o teu nome filho ? "
    >> getLine
    >>= \name -> putStrLn ("O menino de vó, " ++ name ++ ", vai deixar vóvó ?")

