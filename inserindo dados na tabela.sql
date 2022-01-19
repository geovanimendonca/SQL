CREATE TABLE Aula(
Id INT PRIMARY KEY,
Nome VARCHAR(200)
)

INSERT INTO Aula(Id, Nome)
VALUES(5, 'Aula 5')

SELECT *
FROM Aula

SELECT * INTO TabelaNova FROM Aula
Select * FROM TabelaNova

INSERT INTO TabelaNova(Id)
SELECT Id FROM Aula 

