-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Identifique quais as marcas de veículo mais visitada na tabela sales.funnel

select
	prod.brand,
	count(fun.visit_page_date) as visit


from sales.funnel as fun
left join sales.products as prod
	on fun.product_id = prod.product_id
group by brand
order by visit desc



select 
	pro.brand,
	count(*) as visitas

from sales.funnel as fun
left join sales.products as pro
	on fun.product_id = pro.product_id
group by pro.brand
order by visitas desc
-- (Exercício 2) Identifique quais as lojas de veículo mais visitadas na tabela sales.funnel
select
	store.store_name,
	count(*) as visitas

from sales.funnel as fun
left join sales.stores as store
	on fun.store_id = store.store_id
group by store.store_name
order by  visitas desc

-- (Exercício 3) Identifique quantos clientes moram em cada tamanho de cidade (o porte da cidade
-- consta na coluna "size" da tabela temp_tables.regions)
select 
	reg.size,
	count(*) as clients


from sales.customers as cus
left join temp_tables.regions as reg
	on lower(cus.city) = lower(reg.city)
group by size
order by clients desc

select city
from sales.customers