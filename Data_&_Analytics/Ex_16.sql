-- Ex_16

--Apresente a query para listar a quantidade média vendida de cada produto agrupado 
--por estado da federação. 
--As colunas presentes no resultado devem ser estado, nmpro e quantidade_media. 
--Considere arredondar o valor da coluna quantidade_media na quarta casa decimal. 
--Ordene os resultados pelo estado (1º) e nome do produto (2º).
--Observação: Apenas vendas com status concluído.

-- FALTA TERMINAR
select 
	estado,
	nmpro,
	round(avg(qtd), 4) as quantidade_media
from tbvendas
where status = 'Concluído'
group by estado, nmpro, quantidade_media
order by estado, nmpro 

