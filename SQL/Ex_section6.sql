-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Identifique quais as marcas de veículo mais visitada na tabela sales.funnel

select 
		t1.brand,
		count(t2.visit_page_date) as acessos
from sales.products as t1
left join sales.funnel as t2
		on  t1.product_id = t2.product_id
group by t1.brand
order by acessos desc

-- (Exercício 2) Identifique quais as lojas de veículo mais visitadas na tabela sales.funnel

select * from sales.stores
select * from sales.funnel

select
		lojas.store_name,
		count(fun.visit_page_date) as visitas
from sales.stores as lojas
left join sales.funnel as fun
		on lojas.store_id = fun.store_id
group by lojas.store_name
order by visitas desc

-- (Exercício 3) Identifique quantos clientes moram em cada tamanho de cidade (o porte da cidade
-- consta na coluna "size" da tabela temp_tables.regions)
select * from sales.customers
select * from temp_tables.regions
-- Ainda não finalizei
select
		region.size,
		count(client.city) as contagem
from sales.customers as client
left join temp_tables.regions as region
		on client.city = region.city
group by region.size