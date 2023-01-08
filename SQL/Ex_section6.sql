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

select
		reg.size,
		count(cl.city) as contagem
from sales.customers as cl
left join temp_tables.regions as reg
		on lower(cl.city) = lower(reg.city)
		and lower(cl.state) = lower(reg.state)
group by reg.size
order by contagem
