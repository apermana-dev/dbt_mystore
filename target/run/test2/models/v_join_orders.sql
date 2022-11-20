
  create view "dbtest"."dbo"."v_join_orders__dbt_tmp" as (
    SELECT 
	O.OrderID,
	C.CustomerID,
	C.CustomerName,	
	P.ProductName,
    O.OrderCount
FROM
	"dbtest"."dbo"."orders" O
	INNER JOIN "dbtest"."dbo"."customers" C ON C.CustomerID = O.CustomerID
	INNER JOIN "dbtest"."dbo"."products" P ON P.ProductID = O.ProductID
  );