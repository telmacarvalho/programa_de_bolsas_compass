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
	count(*) as quantidade
from livro as li

left join autor as au
	on li.autor = au.codautor

group by au.nome, au.codautor, au.nascimento
order by au.nome

select * from livro
order by autor
select * from autor 
order by codautor