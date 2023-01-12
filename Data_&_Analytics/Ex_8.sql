-- Ex_8
--
-- Apresente a query para listar o código e o nome do vendedor com 
-- maior número de vendas (contagem) e que estas vendas estejam com o status concluída.  
-- As colunas presentes no resultado devem ser, portanto, cdvdd e nmvdd.

select 
	t2.cdvdd,
	t2.nmvdd,
	count(*)
from tbvendas t 
join tbvendedor t2 
	on t.cdvdd  = t2.cdvdd 
where t.status = 'Concluído'
group by t2.cdvdd, 	t2.nmvdd
order by count(t2.cdvdd) desc
limit 1