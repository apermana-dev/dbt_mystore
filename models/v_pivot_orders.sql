{% 
    set pivot_cols = dbt_utils.get_column_values(table=ref('v_join_orders'), column='productname', order_by='productname')
%}
select
    customerid,
    customername,
    {% for productname in pivot_cols  %}
        sum(case when productname = '{{productname}}' then ordercount end) as "{{productname}}",
    {% endfor %}
    
    sum(ordercount) "Total"
from
    {{ ref('v_join_orders') }}
group by 
customerid,
    customername