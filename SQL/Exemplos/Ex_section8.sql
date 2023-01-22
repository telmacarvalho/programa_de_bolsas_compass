-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Crie uma coluna calculada com o número de visitas realizadas por cada
-- cliente da tabela sales.customers

with tabela_visitas as (
	select 	
			customer_id,
			count (fun.visit_page_date) as visitas
	from sales.funnel as fun
	group by customer_id
)

select 
		cus.*,
		vi.visitas
from sales.customers as cus
left join tabela_visitas as vi
		on cus.customer_id = vi.customer_id