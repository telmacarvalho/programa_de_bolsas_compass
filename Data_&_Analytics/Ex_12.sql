-- Ex_12
--
--Apresente a query para listar código, nome e data de nascimento dos dependentes do 
--vendedor com menor valor total bruto em vendas (não sendo zero). 
--As colunas presentes no resultado devem ser cddep, nmdep, dtnasc e valor_total_vendas.
--Observação: Apenas vendas com status concluído.


select
	t3.cddep, 
	t3.nmdep, 
	t3.dtnasc,
	sum(t2.qtd*t2.vrunt) as valor_total_vendas
from tbvendedor t 
join tbvendas t2 
	on t.cdvdd = t2.cdvdd 
	
join tbdependente t3
	on t.cdvdd = t3.cdvdd 
	
where t2.status = 'Concluído'
group by t.cdvdd, t3.cddep, t3.nmdep, t3.dtnasc 
order by valor_total_vendas
limit 1

	