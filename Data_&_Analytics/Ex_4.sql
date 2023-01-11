--Ex_4
--
--Apresente a query para listar a quantidade de livros publicada por cada autor. 
--Ordenar as linhas pela coluna nome (autor), em ordem crescente. 
--Além desta, apresentar as colunas codautor, nascimento e quantidade 
--(total de livros de sua autoria).

select 
	au.nome,	
	au.codautor,
	au.nascimento,
	count(li.autor) as quantidade
from autor as au

left join livro as li
	on li.autor = au.codautor

group by au.nome, au.codautor, au.nascimento
order by au.nome
