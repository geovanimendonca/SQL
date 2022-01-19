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

