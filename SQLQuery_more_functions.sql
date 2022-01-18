-- Fun��es de agrega��o MIN MAX SUM AVG

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

-- Quantos de cada produto foi vendido at� hoje?
SELECT ProductID, SUM (OrderQty) AS 'Vendidos total'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY 'Vendidos total' desc

-- Quantos nomes de cada nome est� cadastrado?
SELECT FirstName, COUNT(FirstName) AS 'Contagem de nomes'
FROM Person.Person
GROUP BY FirstName
ORDER BY 'Contagem de nomes' desc

-- M�dia de pre�o para os produtos que s�o pratas
SELECT Color, AVG(ListPrice) AS 'M�dia de pre�o '
FROM Production.Product 
WHERE Color = 'Silver'
GROUP BY Color

-- Quantas pessoas tem o mesmo middlename e agrupar pelo middlename
SELECT MiddleName, COUNT(MiddleName) as 'Pessoas com esse middle name'
FROM Person.Person
GROUP BY MiddleName

-- Em m�dia qual a quantidade que cada produto � vendido na loja
SELECT ProductID, avg(OrderQty) as 'M�dia de cada produto � vendido na loja'
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Qual foram as 10 vendas que no total tiveram os maiores valores de venda (line total) por produto do maior valor para o menor
SELECT TOP 10 ProductID, SUM(LineTotal) as  'maiores valores de venda'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY 'maiores valores de venda' desc

-- Quantos produtos e qual a quantidade media de produtos temos cadastrados nas nosssas orends de servi~�o (workorder), agrupados por productID
SELECT ProductID, COUNT(ProductID) as 'contagem', AVG(OrderQty) as 'media quantidade'
FROM Production.WorkOrder
GROUP BY ProductID