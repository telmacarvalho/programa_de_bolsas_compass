--Ex_3
--
--Apresente a query para listar as 5 editoras com mais livros na biblioteca. 
--O resultado deve conter apenas as colunas quantidade, nome, estado e cidade. 
--Ordenar as linhas pela coluna que representa a quantidade de livros em ordem decrescente.

select * from livro
select * from editora
select * from endereco 

select
	count(*) as quantidade,
	ed.nome,
	en.estado,
	en.cidade
from livro as li

left join editora as ed 
	on li.editora = ed.codeditora


left join endereco as en 
	on ed.endereco = en.codendereco
group by ed.nome, ed.nome, en.estado, en.cidade
order by quantidade desc
limit 5

