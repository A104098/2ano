-- Universidade do Minho
-- Engenharia Informática
-- Bases de Dados, 2023-2024
-- Linguagem SQL
-- SQL Avançado - Procedimentos, Handlers e Transações 

-- Implementação do Sitemas de Bases de Dados do caso de estudo "ClínicaVet"
-- Belo, O., ABR 2024
-- 
-- Indicar a base de dados de trabalho
USE ClinicaVet;

-- Procedimentos
-- Agendar uma consulta para um animal
-- apAgendarConsulta(<data hora>,<nome animal>,<veterinário>,<mensagem>)
-- Execução do procedimento "apAgendarConsulta"
-- Com referência a um animal que não existe.
CALL spAgendarConsulta('2024-10-10 10:00','Bobi Cool Inexistente','1',@MensagemSP);
SELECT @MensagemSP;

-- Com referência a um funcionário que não é veterinário.
CALL spAgendarConsulta('2024-10-10 10:00','Bobi Cool','4',@MensagemSP);
SELECT @MensagemSP;

CALL spAgendarConsulta('2024-10-10 12:00','Bobi Cool','1',@MensagemSP);
SELECT @MensagemSP;


-- Remoção do procedimento "apAgendarConsulta"
-- DROP PROCEDURE IF EXISTS spAgendarConsulta;
-- Criação do procedimento "apAgendarConsulta"
DELIMITER $$
CREATE PROCEDURE spAgendarConsulta (
	IN DataMarcaçãoConsulta DATETIME, 
    IN NomeAnimal VARCHAR(75), 
    IN IdVeterinário INT, 
    OUT MensagemSP VARCHAR(100)
    )
fimMarcação:BEGIN
	DECLARE AnimalId INT;
	DECLARE VeterinárioId INT;
	DECLARE DataHoraId DATETIME;
	DECLARE ProprietárioId INT;
	DECLARE FuncionárioId INT;
	DECLARE ConsultaId INT;
--
-- Verificar existência do animal indicado
	SET AnimalId = NULL; 
    SET ProprietárioId = NULL;
	SELECT Id, Proprietário INTO AnimalId, ProprietárioId
		FROM Animal
		WHERE Nome = NomeAnimal;
	IF AnimalId IS NULL THEN
 		SET MensagemSP = 'Animal não existe na base de dados.';
		LEAVE fimMarcação;
	END IF;
--
-- Verificar existência do veterinário indicado
	SET VeterinárioId = NULL; 
	SELECT Id INTO VeterinárioId
		FROM Funcionário
		WHERE Id = IdVeterinário 
			AND Função ='Veterinário';
	IF VeterinárioId IS NULL THEN
 		SET MensagemSP = 'Veterinário não existe na base de dados.';
		LEAVE fimMarcação;
	END IF;
--
-- Verificar disponibilidade para a data/hora indicada
	SET DataHoraId = NULL;
	SELECT DataMarcação INTO DataHoraId
		FROM Consulta
		WHERE DataMarcação = DataMarcaçãoConsulta;
	IF DataHoraId IS NOT NULL THEN
 		SET MensagemSP = 'Não existe disponbilidade de agenda para a data e hora pretendida.';
		LEAVE fimMarcação;
	END IF;
--
-- Obtenção do novo número para a consulta
	SELECT MAX(Nr) INTO ConsultaId
		FROM Consulta;
	SET ConsultaId = ConsultaId +1;
	SET DataHoraId = DataMarcaçãoConsulta;
--    
-- Agendamento da consulta
-- Obs.: Assumiu-se que o funcionário '4' realiza todas as marcações de consultas, uma vez
-- que é o único administrativo da clínica. :-)
	INSERT INTO Consulta
		(Nr, DataMarcação, DataAgendamento, Total, Proprietário, Animal, Funcionário, Pontos)
		VALUES 
		(ConsultaId,DataHoraId,CURRENT_DATE(),'0',ProprietárioId,AnimalId,'4','0');  
--
-- Alocação do veterinário à consulta
 --         
    SET MensagemSP = 'Consulta agendada para a data e hora pretendida.';
END;
$$


-- Criação da tabela - "Eventos"
-- Implementação de um jornal de eventos para o sistema.
-- DROP TABLE Eventos;
-- DESC Eventos;
-- DELETE FROM Eventos;
-- TRUNCATE Eventos;
CREATE TABLE Eventos (
	Nr INT NOT NULL AUTO_INCREMENT,
	DataHora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	Descrição VARCHAR (200) NOT NULL DEFAULT 'Operação não definida',
		PRIMARY KEY (Nr)
)
-- AUTO_INCREMENT = 10
;

-- DROP PROCEDURE IF EXISTS spRegistarEvento;
-- Criação do procedimento "spRegistarEvento"
DELIMITER $$
CREATE PROCEDURE spRegistarEvento (
	IN Evento VARCHAR(200)
    )
BEGIN
	INSERT INTO Eventos
		(Descrição)
        VALUES(Evento);
END;

--
--
CALL spRegistarEvento('Evento Inicial');

--
CALL spAgendarConsultaTransações('2024-10-10 11:00','Morgana','2',@MensagemSP);
SELECT @MensagemSP;

-- T R A N S A Ç Õ E S
-- Implementação do procedimento "apAgendarConsulta" utilizando transações
-- 
-- DROP PROCEDURE IF EXISTS spAgendarConsultaTransações;
-- Criação do procedimento "apAgendarConsultaTransações"
DELIMITER $$
CREATE PROCEDURE spAgendarConsultaTransações (
	IN DataMarcaçãoConsulta DATETIME, 
    IN NomeAnimal VARCHAR(75), 
    IN IdVeterinário INT, 
    OUT MensagemSP VARCHAR(100)
    )
fimMarcação:BEGIN
--
-- Declaração de variáveis
	DECLARE AnimalId INT;
	DECLARE VeterinárioId INT;
	DECLARE DataHoraId DATETIME;
	DECLARE ProprietárioId INT;
	DECLARE FuncionárioId INT;
	DECLARE ConsultaId INT;
	DECLARE Evento VARCHAR(200);
--
-- Declaração de handler para identificação de erros/exceções SQL
    DECLARE ErroSQL INT DEFAULT 0;
    DECLARE CONTINUE HANDLER 
        FOR SQLEXCEPTION 
			SET ErroSQL = 1;
--
-- Verificar existência do animal indicado
	SET AnimalId = NULL; 
    SET ProprietárioId = NULL;
	SELECT Id, Proprietário INTO AnimalId, ProprietárioId
		FROM Animal
		WHERE Nome = NomeAnimal;
	IF AnimalId IS NULL THEN
 		SET MensagemSP = 'Animal não existe na base de dados.';
		LEAVE fimMarcação;
	END IF;
--
-- Verificar existência do veterinário indicado
	SET VeterinárioId = NULL; 
	SELECT Id INTO VeterinárioId
		FROM Funcionário
		WHERE Id = IdVeterinário 
			AND Função ='Veterinário';
	IF VeterinárioId IS NULL THEN
 		SET MensagemSP = 'Veterinário não existe na base de dados.';
		LEAVE fimMarcação;
	END IF;
--
-- Verificar disponibilidade para a data/hora indicada
	SET DataHoraId = NULL;
	SELECT DataMarcação INTO DataHoraId
		FROM Consulta
		WHERE DataMarcação = DataMarcaçãoConsulta;
	IF DataHoraId IS NOT NULL THEN
 		SET MensagemSP = 'Não existe disponbilidade de agenda para a data e hora pretendida.';
		LEAVE fimMarcação;
	END IF;
--
-- Obtenção do novo número para a consulta
	SELECT MAX(Nr) INTO ConsultaId
		FROM Consulta;
	SET ConsultaId = ConsultaId +1;
	SET DataHoraId = DataMarcaçãoConsulta;
--
-- Início da transação
	START TRANSACTION;
--    
-- Agendamento da consulta (1ª operação)
-- Obs.: Assumiu-se que o funcionário '4' realiza todas as marcações de consultas, uma vez
-- que é o único administrativo da clínica. :-)
	INSERT INTO Consulta
		(Nr, DataMarcação, DataAgendamento, Total, Proprietário, Animal, Funcionário, Pontos)
		VALUES 
		(ConsultaId,DataHoraId,CURRENT_DATE(),'0',ProprietárioId,AnimalId,'4','0');  
-- Verificação de erro
    IF ErroSQL = 1 THEN
		-- Interrupção da transação da venda
		ROLLBACK;
		SET MensagemSP = 'Transação abortada - Definição da Consulta.';
		LEAVE fimMarcação;
	END IF;
--
-- Alocação do veterinário à consulta (2ª operação)
	INSERT INTO ConsultaMédicos
		(Funcionário, Consulta, Tempo)
		VALUES (VeterinárioId, ConsultaId, '30');
-- Verificação de erro
    IF ErroSQL = 1 THEN
		-- Interrupção da transação da venda
		ROLLBACK;
		SET MensagemSP = 'Transação abortada - Definição do Veterinário da Consulta.';
		LEAVE fimMarcação;
	END IF;
-- Confirmação da transação.
	COMMIT;
--         
    SET MensagemSP = 'Consulta agendada para a data e hora pretendida.';
-- Registo de eventos na tabela "Eventos"
    SET Evento = CONCAT('Consulta Registada',' - ',ConsultaId);
    CALL spRegistarEvento(Evento);
    SET Evento = CONCAT('Consulta - ',ConsultaId,' - Veterinário',' - ',VeterinárioId);
    CALL spRegistarEvento(Evento);    
END;
$$

--
SELECT * FROM Consulta;

-- 2024, Belo, O. 
-- <fim>
--