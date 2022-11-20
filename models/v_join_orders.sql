SELECT 
	O.OrderID,
	C.CustomerID,
	C.CustomerName,	
	P.ProductName,
    O.OrderCount
FROM
	{{ source('db_model', 'orders') }} O
	INNER JOIN {{ source('db_model', 'customers') }} C ON C.CustomerID = O.CustomerID
	INNER JOIN {{ source('db_model', 'products') }} P ON P.ProductID = O.ProductID