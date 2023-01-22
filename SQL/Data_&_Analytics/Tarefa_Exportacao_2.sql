--Tarefa 2 da seção 6
--
--Exportar o resultado da query que obtém as 5 editoras com maior quantidade de livros na biblioteca para um arquivo CSV. Utilizar o caractere | (pipe) como separador. Lembre-se que o conteúdo do seu arquivo deverá respeitar a sequência de colunas e seus respectivos nomes de cabeçalho que listamos abaixo:
--
--CodEditora
--
--NomeEditora
--
--QuantidadeLivros
--
--Observação: O arquivo exportado, conforme as especificações acima, deve ser disponibilizado no GitHub. Abaixo (na caixa de envio), gentileza nos enviar o link do arquivo .csv que colocou no seu github.
--
--exemplo de envio (resposta):
--
--Segue abaixo link do arquivo no formato .csv (referente a query das 5 editoras com maior quantidade de livros na biblioteca) conforme solicitado:
--
--https://github.com/aasouzaconsult/programabolsas/blob/main/arquivo2.csv

select
	ed.codeditora as CodEditora,
	ed.nome as NomeEditora,
	count(*) as QuantidadeLivros
from livro as li

left join editora as ed 
	on li.editora = ed.codeditora

	group by ed.codeditora, ed.nome
order by QuantidadeLivros desc
limit 5
