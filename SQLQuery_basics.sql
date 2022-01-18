/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT  /* selecionando colunas de uma tabela*/
	FirstName,
	LastName
FROM Person.Person

SELECT DISTINCT		/* Distinct (Omite dados duplicados, retorna apenas dados unicos) */
	FirstName
FROM Person.Person

SELECT DISTINCT /* exercicio basico de distinct */
	LastName
FROM Person.Person

-- WHERE
SELECT * 
FROM Person.Person
WHERE FirstName = 'Rob' and LastName = 'Caron'

SELECT *
FROM production.Product
WHERE Color = 'blue' or color = 'black'

SELECT *
FROM production.Product
WHERE ListPrice > 1500 and ListPrice < 5000

SELECT *
FROM production.Product
WHERE Color <> 'red' -- diferente

SELECT -- Desafio 1 - peças que pesam mais de 500Kg e menos que 700Kg
	Name
FROM production.Product
WHERE Weight > 500 and Weight <= 700 

SELECT * -- Desafio 2 - Funcionarios casados e asalariados
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1

SELECT * -- Desafio 3 - Conseguir o e-mail do Peter Krebs
FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs'

SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26

-- COUNT
SELECT COUNT(DISTINCT Title)
FROM Person.Person

SELECT COUNT(*) -- Desafio 1 - quantos produtos temos cadastrados em nossa tabela de produtos
FROM Production.Product

SELECT COUNT(Size) -- Desafio 2 - quantos tamanhos de produtos
FROM Production.Product

SELECT COUNT(DISTINCT Size) -- Desafio 3 - quantos tamanhos diferentes de produtos
FROM Production.Product

-- TOP

SELECT TOP  100 *
FROM Person.Person

-- ORDER BY

SELECT *
FROM Person.Person
ORDER BY FirstName asc --desc

SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName asc,LastName desc 

-- Desafio 1 - Obter o ProductID dos 10 produtos mais caros cadastrados no sistema, listando do mais caro pro mais barato
SELECT *
FROM Production.Product

SELECT TOP 10  ProductId, ListPrice
FROM Production.Product
ORDER BY ListPrice desc

SELECT TOP 4 name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc

-- BETWEEN (valor entre)

SELECT * 
FROM Production.Product
WHERE ListPrice between 1000 and 1500;

SELECT * 
FROM Production.Product
WHERE ListPrice NOT between 1000 and 1500;

SELECT * 
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' and '2010/01/01'
ORDER BY HireDate desc
 
-- IN (valor contém)
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13)

-- LIKE (buscar algo parecido no banco de dados)
SELECT *
FROM Person.Person
WHERE FirstName like '%essa%'

-- Desafios
-- Quantos produtos temos cadastrado no sistema que custam mais que 1500 dolares?
SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500

-- Quantas pessoas temos com o sobrenome que inicia com a letra P?
SELECT COUNT(*)
FROM Person.Person
WHERE LastName like 'p%'

-- Em quantas cidades unicas estão cadastrados nossos clientes?
SELECT COUNT (DISTINCT(City))
From person.address

-- Quais são as cidades unicas que temos cadastradas no nosso sistema?
SELECT DISTINCT City
From person.address
ORDER BY City asc

-- Quantos produtos vermelhos tem o preço entre 500 a 1000 dolares?
SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'red' and ListPrice between 500 and 1000

-- Quantos produtos cadastrados tem a palavra 'road' no nome deles?
SELECT COUNT(*)
FROM Production.Product
WHERE Name like '%road%'

