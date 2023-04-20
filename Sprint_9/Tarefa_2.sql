-- Exibe todos os dados da tabela tb_locacao 
SELECT * 
FROM tb_locacao tl
ORDER BY idLocacao 

-- Exibe dimensões e mátricas do fato da locacao ordenado pelo seu id
SELECT 
	idLocacao,
	idCliente,
	idCarro,
	dataLocacao,
	horaLocacao,
	dataEntrega,
	horaEntrega,
	idVendedor
	kmCarro,
	vlrDiaria
FROM tb_locacao
ORDER BY idLocacao

-- Cria a tabela do fato de locacao 
CREATE TABLE fato_locacao (
  idLocacao INTEGER PRIMARY KEY,
  idCliente INTEGER,
  idCarro INTEGER,
  idVendedor INTEGER,
  dataLocacao TEXT,
  horaLocacao TIME,
  dataEntrega TEXT,
  horaEntrega TIME,
  kmCarro INTEGER,
  vlrDiaria DECIMAL(18,2),
  FOREIGN KEY (idCliente) REFERENCES dim_cliente(idCliente),
  FOREIGN KEY (idCarro) REFERENCES dim_carro(idCarro),
  FOREIGN KEY (idVendedor) REFERENCES dim_vendedor(idVendedor),
  FOREIGN KEY (dataLocacao) REFERENCES dim_dataLocacao(dataLocacao),
  FOREIGN KEY (dataEntrega) REFERENCES dim_dataEntrega(dataEntrega),
  FOREIGN KEY (dataEntrega) REFERENCES dim_dataEntrega(dataEntrega),
  FOREIGN KEY (horaLocacao) REFERENCES dim_horaEntrega(horaLocacao),
  FOREIGN KEY (horaEntrega) REFERENCES dim_horaEntrega(horaEntrega),
)

-- Exibe os tipos de dados das colunas da tabela criada anteriormente
PRAGMA TABLE_INFO(tb_locacao_v2)


-- Exibe dados da dimensão data de locação
SELECT 
	substr(dataLocacao, 1, 4) || '-' || substr(dataLocacao, 5, 2) || '-' || substr(dataLocacao, 7, 2) AS dataLocacao,
	substr(dataLocacao, 7, 2) AS diaLocacao,
	substr(dataLocacao, 5, 2) AS mesLocacao,
	substr(dataLocacao, 1, 4) AS anoLocacao
FROM tb_locacao
ORDER BY dataLocacao

CREATE VIEW nome_da_view AS dim_datas
SELECT coluna1, coluna2, ...
FROM tabela
WHERE condição;



-- Cria nova dimensão de clientes 
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



