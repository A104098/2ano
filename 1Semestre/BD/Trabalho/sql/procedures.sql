USE tricornio;

-- FUNCIONA
-- 1 Quais os casos ativos de um detetive?
DELIMITER $$
Create procedure casos_detetives(IN id_detetive INT)
Begin 
	Select *
    From Caso INNER JOIN Detetive
    ON Caso.Id_Detetive = Detetive.idDetetive
    where Caso.Estado_processo = 1 AND Detetive.idDetetive = id_detetive;
END $$
-- ------------------
-- testando procedure 
-- CALL casos_detetives(1) possui o caso 1 e o 16 
-- ------------------

-- 2 É possivel contar o número de provas associada a um caso ?
-- drop procedure numerodeprovas_caso;
DELIMITER $$
Create procedure numerodeprovas_caso(IN id_caso INT)
Begin 
	Select count(*)
    From Prova INNER JOIN Caso
    ON Prova.Id_Caso = Caso.idCaso
    where caso.idCaso = id_caso;
END $$
-- ------------------
-- testando procedure 
-- CALL numerodeprovas_caso(1) == 3	
-- ------------------

-- 3 É possível saber quais as análises que estão estão associadas a uma prova?
-- drop procedure analises_prova
DELIMITER $$
Create procedure analises_prova(IN id_prova INT)
Begin 
	Select * 
    From Análise
    Where Análise.Id_Prova = id_prova;
END $$
-- ------------------
-- testando procedure 
-- CALL analises_prova(1)
-- ------------------

-- 4 É possível saber qual o histórico de casos de investigação de um detetive?
DELIMITER $$
Create procedure casos_detetive(IN id_detetive INT)
Begin 
	Select * 
    From Caso
    Where Caso.Id_Detetive = id_detetive;
END $$
-- ------------------
-- testando procedure 
-- CALL casos_detetive(1)
-- ------------------


-- 5 É possível saber quais os casos associados a um cliente?
DELIMITER $$
Create procedure casos_cliente(IN id_cliente INT)
Begin 
	Select * 
    From Caso
    Where Caso.NIF_Cliente = id_cliente;
END $$
-- ------------------
-- testando procedure 
-- CALL casos_cliente(111222333) -> só pode dar 1 caso
-- ------------------
