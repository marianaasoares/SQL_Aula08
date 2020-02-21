CREATE TABLE Carro(
	id INT IDENTITY (1,1) PRIMARY KEY,
	Marca VARCHAR(50) NOT NULL,
	Modelo VARCHAR(50),
	IdPessoa INT NOT NULL,
	CONSTRAINT carro_pessoa_fk --Nome da constraint
		FOREIGN KEY (IdPessoa) --propriedade da tabela
		REFERENCES Pessoa(Id) -- tabela estrangeira e prop
);


INSERT INTO Carro (Marca, IdPessoa)
VALUES ('Honda', (SELECT id FROM Pessoa WHERE nome = 'ana'));

SELECT * FROM Carro;

DELETE FROM Carro WHERE Id = (SELECT Id FROM Carro WHERE IdPessoa = 3)
DELETE FROM PESSOA WHERE id = 2;


Select * FROM Pessoa p INNER JOIN Carro c ON p.id = c.IdPessoa --Join entre tabelas