--Ex_7
--
--Apresente a query para listar o nome dos autores com nenhuma publicação. 
--Apresentá-los em ordem crescente.

with publicacoes as (
	select
		au.nome,
		count(li.autor) as quantidade_publicacoes
	from autor as au
	
	left join livro as li
	on li.autor = au.codautor
	
	group by au.nome, au.codautor
)
select
	pu.nome
from publicacoes as pu
where quantidade_publicacoes = 0
order by pu.nome