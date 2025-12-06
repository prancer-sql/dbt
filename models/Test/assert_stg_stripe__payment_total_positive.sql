select order_id 
    , sum(amount) as total_amount
From {{ref('stg_stripe__payments')}}
group by order_id
having sum(amount) < 0