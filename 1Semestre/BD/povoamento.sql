USE tricornio;

-- Povoamento
-- Povoamento da tabela Detetive
INSERT INTO Detetive 
		(Nome, Especialidade, Estado, Data_nascimento, Morada, Telefone, Email, NIF)
VALUES
        ('João Silva', 'Investigação Criminal', 'Ativo', '1985-04-23', 'Rua das Flores, 123, Lisboa', '912345678', 'joao.silva@gmail.com', '123456789'),
        ('Maria Oliveira', 'Perícia Forense', 'Ativo', '1978-07-12', 'Avenida da Liberdade, 456, Porto', '919876543', 'maria.oliveira@gmail.com', '987654321'),
        ('Pedro Santos', 'Cybersegurança', 'Ativo', '1990-09-15', 'Travessa do Mar, 789, Faro', '915678234', 'pedro.santos@gmail.com', '456789123'),
        ('Ana Ferreira', 'Inteligência e Contraespionagem', 'Inativo', '1982-11-30', 'Rua do Sol, 321, Coimbra', '917654321', 'ana.ferreira@gmail.com', '321654987'),
        ('Luís Costa', 'Análise de Dados', 'Ativo', '1988-01-05', 'Largo da Praça, 654, Braga', '918273645', 'luis.costa@gmail.com', '654123789'),
        ('Rita Nunes', 'Investigação Financeira', 'Ativo', '1975-03-22', 'Rua do Mercado, 12, Lisboa', '912345679', 'rita.nunes@gmail.com', '223456789'),
        ('Carlos Martins', 'Investigação de Fraudes', 'Ativo', '1981-08-17', 'Avenida dos Aliados, 34, Porto', '919876544', 'carlos.martins@gmail.com', '887654321'),
        ('Sofia Carvalho', 'Investigação de Homicídios', 'Ativo', '1987-12-29', 'Rua das Estrelas, 56, Faro', '915678235', 'sofia.carvalho@gmail.com', '556789123'),
        ('Tiago Almeida', 'Investigação de Roubo de Arte', 'Ativo', '1992-10-03', 'Travessa da Lua, 78, Coimbra', '917654322', 'tiago.almeida@gmail.com', '621654987'),
        ('Helena Rocha', 'Investigação de Tráfico de Drogas', 'Ativo', '1984-11-19', 'Rua das Rosas, 98, Braga', '918273646', 'helena.rocha@gmail.com', '754123789'),
        ('Paulo Gonçalves', 'Investigação de Crimes Cibernéticos', 'Ativo', '1979-05-25', 'Avenida das Flores, 100, Lisboa', '912345680', 'paulo.goncalves@gmail.com', '323456789'),
        ('Teresa Sousa', 'Investigação de Desaparecidos', 'Ativo', '1986-06-13', 'Rua das Hortênsias, 23, Porto', '919876545', 'teresa.sousa@gmail.com', '887654322'),
        ('Ricardo Mendes', 'Investigação Ambiental', 'Ativo', '1991-07-22', 'Avenida da Paz, 45, Faro', '915678236', 'ricardo.mendes@gmail.com', '556789124'),
        ('Beatriz Lopes', 'Investigação de Terrorismo', 'Ativo', '1983-03-30', 'Travessa da Justiça, 67, Coimbra', '917654323', 'beatriz.lopes@gmail.com', '621654988'),
        ('Marta Rodrigues', 'Investigação de Sequestros', 'Ativo', '1993-01-14', 'Rua da Alegria, 89, Braga', '918273647', 'marta.rodrigues@gmail.com', '754123790'),
        ('André Ferreira', 'Investigação de Extorsão', 'Ativo', '1989-09-09', 'Largo da Liberdade, 21, Lisboa', '912345681', 'andre.ferreira@gmail.com', '323456790'),
        ('Isabel Pinto', 'Investigação de Corrupção', 'Ativo', '1980-12-05', 'Rua das Palmeiras, 43, Porto', '919876546', 'isabel.pinto@gmail.com', '887654323'),
        ('Nuno Teixeira', 'Investigação de Crime Organizado', 'Ativo', '1982-02-27', 'Avenida do Porto, 65, Faro', '915678237', 'nuno.teixeira@gmail.com', '556789125'),
        ('Raquel Sousa', 'Investigação de Crimes de Ódio', 'Ativo', '1977-10-10', 'Travessa do Sol, 87, Coimbra', '917654324', 'raquel.sousa@gmail.com', '621654989'),
        ('Miguel Ramos', 'Investigação de Crimes Econômicos', 'Ativo', '1995-04-18', 'Rua da Esperança, 109, Braga', '918273648', 'miguel.ramos@gmail.com', '754123791');

-- select * from detetive
-- Povoamento da Tabela Cliente
INSERT INTO Cliente 
		(NIF, Nome, Morada, Telefone, Email)
VALUES
        ('111222333', 'Afonso Matos', 'Rua das Flores, 123, Lisboa', '912345678', 'afonso.matos@gmail.com'),
        ('222333444', 'Beatriz Gonçalves', 'Avenida da Liberdade, 456, Porto', '919876543', 'beatriz.goncalves@gmail.com'),
        ('333444555', 'Carlos Silva', 'Travessa do Mar, 789, Faro', '915678234', 'carlos.silva@gmail.com'),
        ('444555666', 'Daniela Oliveira', 'Rua do Sol, 321, Coimbra', '917654321', 'daniela.oliveira@gmail.com'),
        ('555666777', 'Eduardo Costa', 'Largo da Praça, 654, Braga', '918273645', 'eduardo.costa@gmail.com'),
        ('666777888', 'Fátima Nunes', 'Rua do Mercado, 12, Lisboa', '912345679', 'fatima.nunes@gmail.com'),
        ('777888999', 'Gabriel Martins', 'Avenida dos Aliados, 34, Porto', '919876544', 'gabriel.martins@gmail.com'),
        ('888999000', 'Helena Carvalho', 'Rua das Estrelas, 56, Faro', '915678235', 'helena.carvalho@gmail.com'),
        ('999000111', 'Inês Almeida', 'Travessa da Lua, 78, Coimbra', '917654322', 'ines.almeida@gmail.com'),
        ('000111222', 'Jorge Rocha', 'Rua das Rosas, 98, Braga', '918273646', 'jorge.rocha@gmail.com'),
        ('111333444', 'Lúcia Gonçalves', 'Avenida das Flores, 100, Lisboa', '912345680', 'lucia.goncalves@gmail.com'),
        ('222444555', 'Miguel Sousa', 'Rua das Hortênsias, 23, Porto', '919876545', 'miguel.sousa@gmail.com'),
        ('333555666', 'Nuno Mendes', 'Avenida da Paz, 45, Faro', '915678236', 'nuno.mendes@gmail.com'),
        ('444666777', 'Olga Lopes', 'Travessa da Justiça, 67, Coimbra', '917654323', 'olga.lopes@gmail.com'),
        ('555777888', 'Pedro Rodrigues', 'Rua da Alegria, 89, Braga', '918273647', 'pedro.rodrigues@gmail.com'),
        ('555777889', 'Luis Lopes', 'Travessa da Justiça, 88, Coimbra', '917654323', 'luis.lopes@gmail.com'),
        ('555777899', 'Gonçalo Freitas', 'Travessa da Justiça, 67, Guimarães', '966628718', 'gsalo.freitas@gmail.com');
        
-- select * from cliente
-- Povoamento da tabela Caso
INSERT INTO Caso
	(Nome, Data_inicio_investigação, Data_fim_investigação, Estado_processo, Categoria, Montante_de_Pagamento, Forma_de_Pagamento, Estado_do_Pagamento, Id_Detetive, NIF_Cliente)
VALUES
        ('Caso 1', '2024-01-01', '2024-03-01', '1', 'Investigação Criminal', 1500.00, 'Cartão de Crédito', '1', 1, '111222333'),
        ('Caso 2', '2024-02-15', '2024-04-15', '1', 'Perícia Forense', 2000.00, 'Transferência Bancária', '1', 2, '222333444'),
        ('Caso 3', '2024-03-01', '2024-05-01', '0', 'Cybersegurança', 2500.00, 'Dinheiro', 0, 3, '333444555'),
        ('Caso 4', '2024-04-10', '2024-06-10', '0', 'Inteligência e Contraespionagem', 3000.00, 'Cartão de Crédito', '0', 4, '444555666'),
        ('Caso 5', '2024-05-05', '2024-07-05', '1', 'Análise de Dados', 1800.00, 'Transferência Bancária', '1', 5, '555666777'),
        ('Caso 6', '2024-06-01', '2024-08-01', '0', 'Investigação Financeira', 2200.00, 'Dinheiro', '0', 6, '666777888'),
        ('Caso 7', '2024-07-15', '2024-09-15', '1', 'Investigação de Fraudes', 2700.00, 'Cartão de Crédito', '1', 7, '777888999'),
        ('Caso 8', '2024-08-01', '2024-10-01', '0', 'Investigação de Homicídios', 3200.00, 'Transferência Bancária', '0', 8, '888999000'),
        ('Caso 9', '2024-09-10', '2024-11-10', '0', 'Investigação de Roubo de Arte', 3500.00, 'Dinheiro', '1', 9, '999000111'),
        ('Caso 10', '2024-10-01', '2024-12-01', '1', 'Investigação de Tráfico de Drogas', 4000.00, 'Cartão de Crédito', '0', 10, '000111222'),
        ('Caso 11', '2024-11-05', '2025-01-05', '1', 'Investigação de Crimes Cibernéticos', 4500.00, 'Transferência Bancária', '1', 11, '111333444'),
        ('Caso 12', '2024-12-01', '2025-02-01', '1', 'Investigação de Desaparecidos', 5000.00, 'Dinheiro', '0', 12, '222444555'),
        ('Caso 13', '2025-01-10', '2025-03-10', '0', 'Investigação Ambiental', 5500.00, 'Cartão de Crédito', '1', 13, '333555666'),
        ('Caso 14', '2025-02-01', '2025-04-01', '1', 'Investigação de Terrorismo', 6000.00, 'Transferência Bancária', '0', 14, '444666777'),
        ('Caso 15', '2025-03-15', '2025-05-15', '0', 'Investigação de Sequestros', 6500.00, 'Dinheiro', '1', 15, '555777888'),
        ('Caso 16', '2025-04-20', '2025-05-15', '1', 'Investigação de Sequestros', 1000.00, 'Dinheiro', '1', 1, '555777889'),
        ('Caso 17', '2025-04-16', '2025-05-10', '1', 'Investigação de Sequestros', 1000.00, 'Dinheiro', '1', 2, '555777899');
        
-- select * from caso
-- Povoamento da tabela arma
INSERT INTO Arma 
  (N_Licença, Data_Fabrico, Modelo, N_de_Munições, Id_Detetive)
VALUES
  (123456, '2023-01-15 10:00:00', 'Glock 19', 15, 1),
  (234567, '2022-05-20 14:30:00', 'Beretta 92FS', 10, 2),
  (345678, '2021-11-30 09:45:00', 'Sig Sauer P226', 12, 3),
  (456789, '2023-03-10 16:20:00', 'Heckler & Koch VP9', 8, 4),
  (567890, '2022-08-25 11:10:00', 'Smith & Wesson M&P9', 10, 5),
  (678901, '2021-07-05 13:55:00', 'Colt 1911', 7, 6),
  (789012, '2023-02-15 15:30:00', 'Walther P99', 9, 7),
  (890123, '2022-06-10 10:45:00', 'CZ 75', 11, 8),
  (901234, '2021-09-20 12:00:00', 'Ruger SR9', 13, 9),
  (123890, '2023-01-05 17:25:00', 'FN Herstal FNP-9', 14, 10);

-- Povoamento Tabela  Veículo
INSERT INTO Veículo 
  (Data_requisito, Data_devolução, Capacidade_do_veículo, Quantidade_de_gasolina, Estado_do_veículo, Id_Detetive)
VALUES
  ('2024-01-10 09:00:00', '2024-01-20 17:00:00', 5, 50, 'Bom', 1),
  ('2024-02-05 08:30:00', '2024-02-15 16:30:00', 4, 60, 'Excelente', 2),
  ('2024-03-12 10:00:00', '2024-03-22 18:00:00', 7, 45, 'Regular', 3),
  ('2024-04-01 07:45:00', '2024-04-11 15:00:00', 6, 40, 'Bom', 4),
  ('2024-05-07 09:15:00', '2024-05-17 14:45:00', 4, 55, 'Excelente', 5),
  ('2024-06-20 08:00:00', '2024-06-30 16:00:00', 8, 35, 'Bom', 6),
  ('2024-07-15 09:30:00', '2024-07-25 17:30:00', 5, 50, 'Regular', 7),
  ('2024-08-10 07:00:00', '2024-08-20 15:30:00', 6, 60, 'Bom', 8),
  ('2024-09-05 08:45:00', '2024-09-15 16:15:00', 7, 45, 'Excelente', 9),
  ('2024-10-12 10:15:00', '2024-10-22 18:45:00', 4, 50, 'Bom', 10),
  ('2024-11-20 09:00:00', '2024-11-30 17:00:00', 6, 40, 'Regular', 11),
  ('2024-12-25 08:30:00', '2025-01-04 16:30:00', 5, 55, 'Excelente', 12),
  ('2024-02-01 07:45:00', '2024-02-11 15:00:00', 8, 35, 'Bom', 13),
  ('2024-03-10 09:15:00', '2024-03-20 14:45:00', 4, 60, 'Regular', 14),
  ('2024-04-15 08:00:00', '2024-04-25 16:00:00', 6, 50, 'Bom', 15);
 
 -- Povomento Tabela Prova
INSERT INTO Prova 
  (Descrição_da_Prova, Data_obtenção, Id_Caso)
VALUES
  ('Fibra Encontrada', '2024-01-20 14:45:00', 1),
  ('Entrevista com Testemunha', '2024-01-25 11:30:00', 1),
  ('Análise de Documentos', '2024-01-30 09:20:00', 1),
  ('Análise de Vídeo', '2024-02-20 10:00:00', 2),
  ('Perícia de Armas', '2024-02-25 12:15:00', 2),
  ('Análise de Dispositivos Eletrônicos', '2024-02-28 16:30:00', 2),
  ('Exame de DNA Adicional', '2024-03-15 09:45:00', 3),
  ('Exame de Balística', '2024-03-20 14:20:00', 3),
  ('Entrevista com Suspeito', '2024-03-25 11:10:00', 3),
  ('Análise de Impressões Digitais', '2024-04-05 10:30:00', 4),
  ('Exame de Documentos Questionados', '2024-04-10 13:40:00', 4),
  ('Análise de Áudio', '2024-04-15 15:50:00', 4),
  ('Exame de Material Recolhido', '2024-05-10 11:15:00', 5),
  ('Entrevista com Informante', '2024-05-15 14:25:00', 5),
  ('Análise de Câmeras de Segurança', '2024-05-20 16:35:00', 5),
  ('Exame de Registros Financeiros', '2024-06-05 12:00:00', 6),
  ('Análise de Redes Sociais', '2024-06-10 10:10:00', 6),
  ('Entrevista com Vítima', '2024-06-15 13:20:00', 6),
  ('Reconstrução do Local do Crime', '2024-07-10 09:35:00', 7),
  ('Análise de Testemunhos', '2024-07-15 12:45:00', 7),
  ('Exame de Veículos Envolvidos', '2024-07-20 15:55:00', 7),
  ('Análise de Transações Financeiras', '2024-08-05 11:30:00', 8),
  ('Exame de Vestígios Biológicos', '2024-08-10 14:40:00', 8),
  ('Entrevista com Acusado', '2024-08-15 16:50:00', 8),
  ('Análise de Cenas de Crime', '2024-09-10 12:15:00', 9),
  ('Exame de Computadores', '2024-09-15 15:25:00', 9),
  ('Entrevista com Testemunha-Chave', '2024-09-20 17:35:00', 9),
  ('Reconstrução de Eventos', '2024-10-15 13:00:00', 10),
  ('Análise de Chamadas Telefônicas', '2024-10-20 16:10:00', 10),
  ('Exame de Drogas Apreendidas', '2024-10-25 18:20:00', 10),
  ('Análise de Impressões de Pneus', '2024-11-10 14:45:00', 11),
  ('Exame de Evidências Digitais', '2024-11-15 17:55:00', 11),
  ('Entrevista com Informante Secreto', '2024-11-20 10:20:00', 11),
  ('Análise de Resíduos', '2024-12-15 12:35:00', 12),
  ('Exame de Metais Encontrados', '2024-12-20 15:45:00', 12),
  ('Entrevista com Familiar da Vítima', '2024-12-25 17:55:00', 12),
  ('Análise de Vídeos de Trânsito', '2025-01-20 13:20:00', 13),
  ('Exame de Água', '2025-01-25 16:30:00', 13),
  ('Entrevista com Perito Externo', '2025-02-10 18:40:00', 13),
  ('Análise de Fragmentos', '2025-03-05 14:05:00', 14),
  ('Exame de Ferramentas Usadas', '2025-03-10 17:15:00', 14),
  ('Entrevista com Colega de Trabalho', '2025-03-15 10:40:00', 14),
  ('Análise de Plantas', '2025-04-10 12:55:00', 15),
  ('Exame de Animais', '2025-04-15 16:05:00', 15),
  ('Entrevista com Testemunha Ocular', '2025-04-20 18:15:00', 15);

-- select * from prova
-- Povoamento da tabela Análise
INSERT INTO Análise 
  (Resultados, Data_de_Análise, Data_de_Resultados, Id_Prova)
VALUES
  ('Análise concluída com sucesso.', '2024-01-20 09:00:00', '2024-01-25 14:00:00', 1),
  ('Resultados não conclusivos.', '2024-01-25 10:00:00', '2024-01-30 15:00:00', 2),
  ('Sem resultados significativos.', '2024-01-30 11:00:00', '2024-02-05 16:00:00', 3),
  ('Resultados aguardando validação.', '2024-02-20 09:30:00', '2024-02-25 14:30:00', 4),
  ('Análise em andamento.', '2024-02-25 10:30:00', '2024-03-01 15:30:00', 5),
  ('Sem resultados disponíveis.', '2024-02-28 11:30:00', '2024-03-05 16:30:00', 6),
  ('Resultados pendentes.', '2024-03-15 10:00:00', '2024-03-20 15:00:00', 7),
  ('Análise em progresso.', '2024-03-20 11:00:00', '2024-03-25 16:00:00', 8),
  ('Resultados não finalizados.', '2024-03-25 12:00:00', '2024-03-30 17:00:00', 9),
  ('Análise interrompida.', '2024-04-05 09:30:00', '2024-04-10 14:30:00', 10),
  ('Resultados inconclusivos.', '2024-04-10 10:30:00', '2024-04-15 15:30:00', 11),
  ('Análise em espera.', '2024-04-15 11:30:00', '2024-04-20 16:30:00', 12),
  ('Resultados a serem processados.', '2024-05-10 09:00:00', '2024-05-15 14:00:00', 13),
  ('Análise programada.', '2024-05-15 10:00:00', '2024-05-20 15:00:00', 14);

