use tricornio;
-- VISTAS
-- Contactos dos clientes
CREATE VIEW Clientes_contactos 
AS
	SELECT Nome AS "Nome", Telefone AS "Telefone", Email AS "Email"
		FROM Cliente;
--
DROP VIEW Clientes_contactos;
--    
SELECT *
	FROM Clientes_contactos;
    
-- Contactos dos detetives
CREATE VIEW Detetives_contactos 
AS
	SELECT Nome AS "Nome", Telefone AS "Telefone", Email AS "Email"
		FROM Detetive;
--
DROP VIEW Detetives_contactos;
--    
SELECT *
	FROM Detetives_contactos;

-- Folha de pagamento por cliente
CREATE VIEW Folha_Pagamento 
	As
		SELECT  Cliente.Nome AS "Nome", Montante_de_Pagamento AS "Montante", Forma_de_Pagamento AS "Forma de Pagamento", Estado_do_Pagamento AS "Estado"
        FROM Cliente INNER JOIN Caso
        ON Cliente.NIF =  Caso.NIF_Cliente;
 
 DROP VIEW Folha_Pagamento;
 --    
SELECT *
	FROM Folha_Pagamento;
    
-- Casos ativos por detetive 
CREATE VIEW  CasosAtivos_detetives
	As
		SELECT  Caso.Nome AS "Nome do Caso", Detetive.Nome AS "Nome do Detetive"
        FROM Caso INNER JOIN Detetive
        ON caso.Id_Detetive =  detetive.idDetetive
        where caso.Estado_processo = 1 ;

 DROP VIEW CasosAtivos_detetives;
 --    
SELECT *
	FROM CasosAtivos_detetives;
        
        
        