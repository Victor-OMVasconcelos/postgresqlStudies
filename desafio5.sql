-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Crie uma coluna calculada com o número de visitas realizadas por cada
-- cliente da tabela sales.customers
with num_visitas as (
	select customer_id, count(*) as visitas
	from sales.funnel
	group by customer_id


)
select 
	cus.*,
	visitas
from sales.customers as cus
left join num_visitas as nvis
	on cus.customer_id = nvis.customer_id
order by visitas desc

	
	



	