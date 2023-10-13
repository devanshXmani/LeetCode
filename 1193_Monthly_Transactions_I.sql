select 
substr(trans_date,1,7) as month, 
country,
count(distinct id) as trans_count,
count(distinct case when state = 'approved' then id else null end) as approved_count,
sum(amount) as trans_total_amount,
sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from Transactions
group by 1,2
order by 1
