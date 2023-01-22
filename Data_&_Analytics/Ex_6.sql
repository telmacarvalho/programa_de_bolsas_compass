--Ex_6
--
--Apresente a query para listar o autor com maior número de livros publicados. 
--O resultado deve conter apenas as colunas codautor, nome, quantidade_publicacoes.


select 
	au.codautor,
	au.nome,
	count(li.autor) as quantidade_publicacoes
from autor as au

left join livro as li
	on li.autor = au.codautor

group by au.nome, au.codautor
order by quantidade_publicacoes desc
limit 1