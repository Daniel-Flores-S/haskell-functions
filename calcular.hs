--Elaborar uma função Haskell para calcular o valor total da compra um cliente de uma loja de comércio eletrônico.

carrinho :: [ (String,Float) ]
carrinho = [ ("TV ",2000.00),
            ("Note",5000.00),
            ("Smart",1200.00) ]            

total :: [ (String,Float) ]  -> Float
total a = sum [x | (_,x) <- a]










