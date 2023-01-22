--Tarefa 1 da seção 6
--
--Considerando a base de dados Biblioteca apresentada na Seção 3, realize a exportação de dados (em formato .CSV) através do cliente SQL de sua preferência (DBeaver, VSCode...).  O layout dos arquivos, bem como os critérios de coleta de dados estão definidos em cada uma das questões da atividade.
--
--Perguntas dessa tarefa
--Exportar o resultado da query que obtém os 10 livros mais caros para um arquivo CSV. Utilizar o caractere ; (ponto e vírgula) como separador. Lembre-se que o conteúdo do seu arquivo deverá respeitar a sequência de colunas e seus respectivos nomes de cabeçalho que listamos abaixo:
--
--CodLivro
--
--Titulo
--
--CodAutor
--
--NomeAutor
--
--Valor
--
--CodEditora
--
--NomeEditora
--
--Observação: O arquivo exportado, conforme as especificações acima, deve ser disponibilizado no GitHub. Abaixo (na caixa de envio), gentileza nos enviar o link do arquivo .csv que colocou no seu github.
--
--exemplo de envio (resposta):
--
--Segue abaixo link do arquivo no formato .csv (referente a query dos 10 livros mais caros) conforme solicitado:
--
--https://github.com/aasouzaconsult/programabolsas/blob/main/arquivo1.csv

select * from livro 

select 
	li.cod as CodLivro,
	li.titulo as Título,
	li.autor as CodAutor,
	au.nome as NomeAutor,
	li.valor as Valor,
	li.editora as CodEditora,
	ed.nome as NomeEditora
from livro li
join autor au
	on li.autor = au.codautor
join editora ed
	on li.editora = ed.codeditora
order by valor desc
limit 10

