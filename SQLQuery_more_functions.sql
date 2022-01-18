-- Funções de agregação MIN MAX SUM AVG

-- SUM
SELECT TOP 10 Sum(LineTotal) AS "Soma"
FROM Sales.SalesOrderDetail

-- MIN
SELECT TOP 10 MIN(LineTotal) as "Min"
FROM Sales.SalesOrderDetail

-- MAX
SELECT TOP 10 MAX(LineTotal) as "Max"
FROM Sales.SalesOrderDetail

-- AVG
SELECT TOP 10 AVG(LineTotal) as "Avg"
FROM Sales.SalesOrderDetail

-- GROUP BY divide o resultado da pesquisa em grupos
SELECT *
FROM Sales.SalesOrderDetail

-- Pegou todos os IDs e somou os unit prices daquele ID
SELECT SpecialOfferID, SUM(UnitPrice) AS "soma"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

-- Quantos de cada produto foi vendido até hoje?
SELECT ProductID, SUM (OrderQty) AS 'Vendidos total'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY 'Vendidos total' desc

-- Quantos nomes de cada nome está cadastrado?
SELECT FirstName, COUNT(FirstName) AS 'Contagem de nomes'
FROM Person.Person
GROUP BY FirstName
ORDER BY 'Contagem de nomes' desc

-- Média de preço para os produtos que são pratas
SELECT Color, AVG(ListPrice) AS 'Média de preço (silver)'
FROM Production.Product 
WHERE Color = 'Silver'
GROUP BY Color
ORDER BY 'Média de preço (silver)' asc