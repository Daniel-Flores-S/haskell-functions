--Elaborar uma função Haskell para converter uma data do formato "AAAA-MM-DD" para o formato "DD/MM/AAAA".

converte :: String ->  String
converte a = [if x == '-' then '/'else x | x <- a]
