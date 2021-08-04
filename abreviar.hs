-- Elaborar em Haskell um função chamada abreviar que receba uma string contendo o nome completo de uma pessoa e retorne uma string com o primeiro e o último nome.

abreviar :: String ->  String
abreviar a = head (words a) ++" "++ last (words a)
