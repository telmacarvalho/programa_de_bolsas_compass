-- EXEMPLOS ########################################################################

-- (Exemplo 1) Soma de datas utilizando INTERVAL
-- Calcule a data de hoje mais 10 unidades (dias, semanas, meses, horas)

select current_date + 10

select (current_date + interval '10 weeks')::date
select (current_date + interval '10 month')::date
select (current_date + interval '10 hours')

-- (Exemplo 2) Truncagem de datas utilizando DATE_TRUNC
-- Calcule quantas visitas ocorreram por mês no site da empresa

select visit_page_date, count(*)
from sales.funnel
group by visit_page_date
order by visit_page_date desc

select
	date_trunc('month', visit_page_date)::date as "visitas por mês",
	count(*)
from sales.funnel
group by "visitas por mês"
order by "visitas por mês" desc

-- (Exemplo 3) Extração de unidades de uma data utilizando EXTRACT
-- Calcule qual é o dia da semana que mais recebe visitas ao site

select
	'2022-01-30'::date

with visitas_por_semana as(
	select
		extract('dow' from visit_page_date) as "dia da semana",
		count(*) as contagem
	from sales.funnel
	--ere contagem = (select max(contagem) from sales.funnel)
	group by "dia da semana"
)

select *
from visitas_por_semana
where contagem = (select max(contagem) from visitas_por_semana)
group by "dia da semana", contagem

-- (Exemplo 4) Diferença entre datas com operador de subtração (-) 
-- Calcule a diferença entre hoje e '2018-06-01', em dias, semanas, meses e anos.
--Resposta em dias:
select current_date - '2018-06-01'::date

--Resposta em semanas:
select (current_date - '2018-06-01'::date)/7

--Resposta em meses:
select (current_date - '2018-06-01'::date)/30

--Resposta em anos:
select (current_date - '2018-06-01'::date)/365

