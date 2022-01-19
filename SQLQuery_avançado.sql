-- Inner join
-- BussinessEntityId, FirstName, LastName, EmailAdress
-- Sempre dar nomes as tabela, p, pe. Boas práticas. E relacionar as colunas semelhantes
SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
FROM Person.Person as P
INNER JOIN Person.EmailAddress PE on p.BusinessEntityID = pe.BusinessEntityID

SELECT pr.ListPrice, pr.Name, pc.Name
FROM Production.Product as Pr
INNER JOIN Production.ProductSubcategory as pc on PC.ProductCategoryID = PR.ProductSubcategoryID

-- Juntar 2 tabelas
SELECT TOP 10 *
FROM Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID

-- Desafio
SELECT TOP 10 *
FROM Person.PhoneNumberType

SELECT TOP 10 *
FROM Person.PersonPhone

SELECT PP.BusinessEntityID, PN.Name, PP.PhoneNumberTypeID, PP.PhoneNumber
FROM Person.PhoneNumberType PN
INNER JOIN Person.PersonPhone PP ON PN.PhoneNumberTypeID = PN.PhoneNumberTypeID
WHERE PN.Name ='HOME'
ORDER BY PP.BusinessEntityID ASC

SELECT PA.AddressID, PA.City, PA.StateProvinceID, PS.Name
FROM Person.StateProvince PS
INNER JOIN Person.Address PA ON PS.StateProvinceID = PA.StateProvinceID

-- LEFT OUTER JOIN
-- LEFT JOIN
-- Descobrir quais pessoas tem um cartão de crédito registrado
SELECT * 
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL
-- INNER JOIN : 19118 linhas
-- LEFT JOIN : 19972


-- UNION