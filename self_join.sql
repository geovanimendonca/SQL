-- SELF JOIN
--SELECT NOME_COLUNA
--FROM TABELA A, TABELA B
--WHERE CONDICAO

SELECT A.ContactName, A.Region, B.Region, B.ContactName
FROM Customers A, Customers B
WHERE A.Region = B.Region

-- Encontrar nome e data de contratação de todos funcionarios que foram contratados no mesmo ano
SELECT A.FirstName, DATEPART(YEAR,A.HireDate), B.FirstName, DATEPART(YEAR,B.HireDate)
FROM Employees A, Employees B
WHERE DATEPART(YEAR,A.HireDate) = DATEPART(YEAR,B.HireDate)
ORDER BY DATEPART(YEAR,A.HireDate) desc

-- Na tabela detalhe do pedido (order details) quais produtos tem o mesmo percentual de desconto
SELECT TOP 100 A.ProductID, A.Discount, B.ProductID, B.Discount
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount

