--Ex_2
--
--Apresente a query para listar os 10 livros mais caros. 
--Ordenar as linhas pela coluna valor, em ordem decrescente.  
--Atenção às colunas esperadas no resultado final:  titulo, valor.

select 
	titulo,
	valor
from livro 
order by valor desc 
limit 10