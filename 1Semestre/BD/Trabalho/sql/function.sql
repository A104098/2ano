USE Tricornio;

DELIMITER $$
CREATE FUNCTION dinheirogerado_detetive(num INT)
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN(SELECT SUM(Caso.Montante_de_Pagamento) AS 'Dinheiro Gerado' FROM Caso INNER JOIN 
    Detetive ON Caso.Id_Detetive = Detetive.idDetetive
    WHERE Detetive.idDetetive = num);

END $$
DELIMITER ;



