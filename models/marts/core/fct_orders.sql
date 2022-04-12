with orders as (
    select
        t1.order_id,
        customer_id,
        amount
    from {{ref('stg_orders')}} as t1
    left join {{ref('stg_payments')}} as t2 on t1.order_id = t2.order_id
    where t2.status == 'success'
)

select * from orders