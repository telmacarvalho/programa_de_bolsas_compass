-- (Exemplo 1) Agrupamento de dados com CASE WHEN
-- Calcule o nº de clientes que ganham abaixo de 5k, entre 5k e 10k, entre 10k e 
-- 15k e acima de 15k

with tabela_salarios as (
	select 
		income,
		case
			when income < 5000 then 'até 5k'
			when income between 5000 and 10000 then '5k até 10k'
			when income between 10000 and 15000 then 'de 10k até 15k'
			else 'acima de 15k'
			end as salarios
	from sales.customers
)

select 
	salarios,
	count(*)
from tabela_salarios
group by salarios

-- (Exemplo 2) Tratamento de dados nulos com COALESCE
-- Crie uma coluna chamada populacao_ajustada na tabela temp_tables.regions e
-- preencha com os dados da coluna population, mas caso esse campo estiver nulo, 
-- preencha com a população média (geral) das cidades do Brasil
