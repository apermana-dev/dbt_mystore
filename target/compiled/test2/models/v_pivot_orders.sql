
select
    customerid,
    customername,
    
        sum(case when productname = 'HP' then ordercount end) as "HP",
    
        sum(case when productname = 'Notebook' then ordercount end) as "Notebook",
    
    
    sum(ordercount) "Total"
from
    "dbtest"."dbo"."v_join_orders"
group by 
customerid,
    customername