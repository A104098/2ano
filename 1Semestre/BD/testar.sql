SELECT Tabelas.Designaçao, Administradores.Categoria
FROM Tabelas 
JOIN Administradores ON Tabelas.Id = Administradores.id;