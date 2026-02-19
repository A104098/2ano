Use tricornio;

-- Os clientes podem registar o feedback de um caso

-- Criação do utilizador 'detetive'
CREATE USER 'detetive'@'localhost';

-- Definição de password do detetive
SET PASSWORD FOR 'detetive'@'localhost' = 'detetive';

-- Criação do utilizador 'cliente'
CREATE USER 'cliente'@'localhost';

-- Definição de password de cliente
SET PASSWORD FOR 'cliente'@'localhost' = 'cliente';

-- Permissões
-- Cliente só pode ver o nome dos detetives a sua especialidade e o sei email

GRANT SELECT (Nome, Especialidade, Telefone, Email) 
	ON Tricornio.Detetive TO 'cliente'@'localhost';

GRANT ALL ON tricornio.* TO 'detetive'@'localhost';
-- SELECT *  FROM mysql.user WHERE User = 'detetive';

-- Consulta os privilegios 
-- SHOW GRANTS FOR 'cliente'@'localhost';




