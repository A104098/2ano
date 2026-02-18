-- 
-- exemplo 1
-- Stored Procedures
DELIMITER §§
CREATE PROCEDURE listaAnimais()
BEGIN
	SELECT *
		FROM Animal;
END
§§ 

-- execução do procedimento "listaAnimais". 
CALL listaAnimais;

-- remoção do procedimento "listaAnimais" do sistema
DROP PROCEDURE listaAnimais;
-- Exemplo 2 - Com utilização de parametros
DELIMITER §§
CREATE PROCEDURE spListaAnimais2(IN Identificador INT)
BEGIN
	SELECT *
		FROM Animal;
		WHERE Id=Identificador;
END
$$
CALL spListaAnimais2 (2);  
-- Exemplo 3 - Com utilização de verios parametro
DELIMITER §§
CREATE PROCEDURE spListaAnimais3(
IN Id1 INT,
IN Id2 INT
)
BEGIN
	SELECT *
    FROM Animal
    WHERE Id >= Id1 AND ID<=Id2;
END §§
-- FUNÇÕES
DELIMITER §§
CREATE FUNCTION fuDaPreçoAção(
	Id INT
	)
	RETURNS VARCHAR(75)
	DETERMINISTIC
BEGIN
	RETURN emailCliente;
    END §§
    DELIMITER §§
CREATE FUNCTION fuDaPreçoAção(
	Id INT
	)
	RETURNS DECIMAL(8,2)
	DETERMINISTIC
BEGIN
	SELECT Preço INTO PreçoAção
    FROM Ação
    WHERE Id= Identificador;
    RETURN PreçoAção
END
§§
-- EXEVUTAR
SELECT *
FROM Ação;
-- perdi-me na aula por aqui
-- NO INSERT A OLD NAO TEM NADA E NO DELETE A OLD TEM um registo e a new ta vazia
DELIMITER $$
CREATE TRIGGER tgDaPontesProprietário
AFTER INSERT ON Consulta -- insert aconteceu mas ainda n ta na base pq o trigger ainda n aconteceu
FOR EACH ROW
BEGIN
UPDATE Proprietário
SET P.Pontos= P.Pontos - NEW.Pontos
WHERE P.Id=NEW.Proprietário;
END 
§§
