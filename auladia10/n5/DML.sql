INSERT INTO CLIENTE (Nome) VALUES (' Paty') , ('Lari') , ('Nath');

INSERT INTO PROD (Tipo, Preco) VALUES ('CAMISETA' , 1) , ('REGATA' , 2) , ('BLUSA' , 3);

INSERT INTO COMPRA (IdCliente, IdProduto) VALUES (1,1) , (2,2) , (3,3);

UPDATE PROD SET Preco = 50.00 WHERE IdProduto = 3;