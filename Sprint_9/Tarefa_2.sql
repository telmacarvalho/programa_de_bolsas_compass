-- Exibe todos os dados da tabela tb_locacao 
SELECT * 
FROM tb_locacao tl
ORDER BY idLocacao 


-- Exibe dados da dimensão data de locação
SELECT 
	substr(dataLocacao, 1, 4) || '-' || substr(dataLocacao, 5, 2) || '-' || substr(dataLocacao, 7, 2) AS dataLocacao,
	substr(dataLocacao, 7, 2) AS diaLocacao,
--	CASE
--		WHEN (SELECT substr(dataLocacao, 7, 2) < '7') THEN 1
--		WHEN (SELECT substr(dataLocacao, 7, 2) BETWEEN '7' AND '14') THEN 2
--	END AS semanaLocacao,
	substr(dataLocacao, 5, 2) AS mesLocacao,
	substr(dataLocacao, 1, 4) AS anoLocacao
FROM tb_locacao 
--GROUP BY dataLocacao
ORDER BY dataLocacao

-- tb_locacao_v2 definition



-- Cria nova dimensão de clientes sem duplicidades
CREATE TABLE dim_cliente
AS SELECT 
		idCliente,
		nomeCliente,
		cidadeCliente,
		estadoCliente,
		paisCliente
FROM tb_locacao 
GROUP BY idCliente 
ORDER BY idCliente 

-- Exibe a tabela tb_clientes
SELECT *
FROM dim_cliente


-- Cria nova dimensão de datas sem duplicidades
CREATE TABLE dim_cliente
AS SELECT 
		idCliente,
		nomeCliente,
		cidadeCliente,
		estadoCliente,
		paisCliente
FROM tb_locacao 
GROUP BY idCliente 
ORDER BY idCliente 

-- Exibe a tabela tb_clientes
SELECT *
FROM dim_cliente
