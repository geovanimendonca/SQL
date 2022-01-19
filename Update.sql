SELECT * FROM Aula

INSERT INTO Aula(Id, Nome)
VALUES (1, 'Teste'),(2, 'Teste') 

UPDATE Aula
SET Nome = 'Mudei de novo',
Id = 3
WHERE Id = 77

DELETE FROM Aula
WHERE Nome = 'Teste'


