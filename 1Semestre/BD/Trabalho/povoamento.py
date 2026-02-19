import mysql.connector

# dados do servidor sql
mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "palavrapasse",
    database = "Tricornio"
)

mycursor = mydb.cursor()

# Dados que se pretende inserir
sql = "INSERT INTO Cliente (NIF, Nome, Morada, Telefone, Email) VALUES (%s, %s, %s, %s, %s)"
val = [("179825878", "António Silva", "Rua Eusébio, 66, Lisboa", "934457689", "otamendinobolso@benfica.pt"),
       ("273634538", "Ricardo Quaresma", "Rua da Trivela, 7 , Porto", "968033543", "triveladourada7@gmail.com"),
       ("360123767", "João Capital", "Rua da Fragata, 1, Guimarães", "934407689", "joaocapital123@hotmail.com"),
       ("156789123", "Maria Zita", "Rua da Chuva, 12, Faro", "934457689", "asviagensdamaria@gmail.com"),
       ("176309821", "José Saramago", "Rua do Livro, 55, Lisboa", "914957789", "ensaiosobreacegueira@saramago.com")
    ]

sql2 = "INSERT INTO Arma (idArma, N_licença, Data_Fabrico, Modelo, N_de_Munições, Id_Detetive) VALUES (%s, %s, %s, %s, %s, %s)"
val2 = [("11", "345654", "2021-03-05 16:02:47", "Glock 22", "17" , "11"),    
        ("12", "123679", "2001-09-11 08:46:00", "Dandelion 21", "12" , "12"),
        ("13", "456789", "2010-05-12 12:45:00", "M1911", "7" , "13"),
        ("14", "108726", "2015-07-23 14:23:00", "Glock 17", "14" , "12"),
        ("15", "987654", "2019-11-30 18:00:00", "S1935", "15" , "10"),
    ]


mycursor.executemany(sql, val)
mycursor.executemany(sql2, val2)
mydb.commit()
 
print(mycursor.rowcount, "detalhes inseridos")
 
# desconectar do servidor
mydb.close()




