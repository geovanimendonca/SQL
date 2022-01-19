CREATE TABLE Youtube (
Id INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL UNIQUE,
Categoria VARCHAR(200) NOT NULL,
DataCriacao DATETIME NOT NULL
)

SELECT *
FROM Youtube

ALTER TABLE Youtube
ADD Ativo bit

ALTER TABLE Youtube
ALTER COLUMN Categoria varchar(300) NOT NULL

EXEC sp_RENAME 'Youtube.Nome', 'NomeCanal', 'COLUMN' -- Renomeando nome da coluna

EXEC sp_RENAME 'Youtube', 'Youtube2' -- Renomeando tabela para youtube2
SELECT *
FROM Youtube2


CREATE TABLE Pessoa (
Id INT PRIMARY KEY,
Nome VARCHAR(50) NOT NULL,
Idade INT DEFAULT 0
)

SELECT * FROM Pessoa

ALTER TABLE Pessoa
ALTER COLUMN Nome varchar(300) NOT NULL

EXEC sp_RENAME 'Pessoa', 'Person'
SELECT * FROM Person

DROP TABLE Person

TRUNCATE TABLE Person

-- CHECK CONSTRAINT

CREATE TABLE CarteiraMotorista(
Id INT NOT NULL,
Nome VARCHAR(255) NOT NULL UNIQUE,
Idade INT CHECK (Idade >= 18)
)

DROP TABLE CarteiraMotorista

SELECT *
FROM CarteiraMotorista

INSERT INTO CarteiraMotorista (Id, Nome, Idade)
VALUES (1, 'Geovani', 18)


