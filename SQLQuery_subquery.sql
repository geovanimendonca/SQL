-- Subquery
-- Monte um relatório de todos os produtos cadastrados que tem preço de venda acima da média

SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

-- O nome dos funcionários que tem o cargo de 'Design Engineer'
SELECT *
FROM Person.Person

SELECT *
FROM HumanResources.Employee
-- Coluna em comum, BusinessEntityID
SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN 
(SELECT BusinessEntityID 
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer')

SELECT P.FirstName 
FROM Person.Person P
INNER JOIN HumanResources.Employee E ON P.BusinessEntityID = E.BusinessEntityID
AND E.JobTitle = 'Design Engineer'

-- Desafio, descobrir todos os endereços que estão no estado de 'Alberta'
SELECT *
FROM Person.Address


SELECT *
FROM Person.StateProvince

SELECT AddressLine1
FROM Person.Address
WHERE StateProvinceID IN (
SELECT StateProvinceID FROM Person.StateProvince 
WHERE Name = 'Alberta'
)

SELECT PA.AddressLine1
FROM Person.Address PA
INNER JOIN Person.StateProvince SP ON PA.StateProvinceID = SP.StateProvinceID WHERE SP.Name = 'Alberta'
