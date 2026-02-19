-- Índice para consulta "Detetives" dá o id do detetive
CREATE INDEX idx_detetive ON Detetive (idDetetive);

-- Índice para consulta "Caso"
CREATE INDEX idx_caso ON Caso (idCaso);

-- Índice para consulta "Cliente"
CREATE INDEX idx_cliente ON Cliente (NIF);

