-- Exibe todos os dados da tabela tb_locacao 
SELECT * 
FROM tb_locacao tl
ORDER BY idLocacao; 

-- Exibe dimensões e métricas que irão constar no fato da locacao ordenado pelo seu id
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
ORDER BY idLocacao;

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
  FOREIGN KEY (horaEntrega) REFERENCES dim_horaEntrega(horaEntrega)
);

-- Exibe os tipos de dados das colunas da tabela criada anteriormente
PRAGMA TABLE_INFO(fato_locacao);

-- Adiciona dados da tabela tb_locacao na tabela fato_locacao
INSERT INTO fato_Locacao(
	idLocacao,
	idCliente,
	idCarro,
	dataLocacao,
	horaLocacao,
	dataEntrega,
	horaEntrega,
	idVendedor,
	kmCarro,
	vlrDiaria
) 
SELECT 
	idLocacao,
	idCliente,
	idCarro,
	dataLocacao,
	horaLocacao,
	dataEntrega,
	horaEntrega,
	idVendedor,
	kmCarro,
	vlrDiaria
FROM tb_locacao
ORDER BY idLocacao;

-- Exibe a tabela fato_locacao
SELECT *
FROM fato_locacao fl; 

-- Exibe dados que serão da dimensão clientes 
SELECT 
	idCliente,
	nomeCliente,
	cidadeCliente,
	estadoCliente,
	paisCliente
FROM tb_locacao 
ORDER BY idCliente;

-- Cria nova dimensão de clientes 
CREATE TABLE dim_cliente (
	idCliente INTEGER PRIMARY KEY,
	nomeCliente TEXT,
	cidadeCliente TEXT,
	estadoCliente TEXT,
	paisCliente TEXT
);

-- Exibe os tipos de dados das colunas da dimensão criada anteriormente
PRAGMA TABLE_INFO(dim_cliente);

-- Adiciona dados da tabela tb_locacao na tabela fato_locacao
INSERT INTO dim_cliente(
	idCliente,
	nomeCliente,
	cidadeCliente,
	estadoCliente,
	paisCliente
)
SELECT 
	idCliente,
	nomeCliente,
	cidadeCliente,
	estadoCliente,
	paisCliente
FROM tb_locacao 
GROUP BY idCliente 
ORDER BY idCliente;

-- Exibe a dimensão tb_clientes
SELECT *
FROM dim_cliente;

-- Exibe dados que serão da dimensão carros
SELECT 
	idCarro,
	classiCarro,
	marcaCarro,
	modeloCarro,
	anoCarro,
	tipoCombustivel
FROM tb_locacao 
ORDER BY idCarro;

-- Cria nova dimensão de clientes 
CREATE TABLE dim_carro (
	idCarro INTEGER PRIMARY KEY,
	classiCarro TEXT,
	marcaCarro TEXT,
	modeloCarro TEXT,
	anoCarro INTEGER,
	tipoCombustivel TEXT
);

-- Exibe os tipos de dados das colunas da dimensão criada anteriormente
PRAGMA TABLE_INFO(dim_carro);

-- Adiciona dados da tabela tb_locacao na tabela fato_locacao
INSERT INTO dim_carro(
	idCarro,
	classiCarro,
	marcaCarro,
	modeloCarro,
	anoCarro,
	tipoCombustivel
)
SELECT
	idCarro,
	classiCarro,
	marcaCarro,
	modeloCarro,
	anoCarro,
	tipoCombustivel
FROM tb_locacao 
GROUP BY idCarro
ORDER BY idCarro;

-- Exibe a dimensão dim_carro
SELECT *
FROM dim_carro;


-- Exibe dados que serão da dimensão clientes 
SELECT 
	idVendedor,
	nomeVendedor,
	sexoVendedor,
	estadoVendedor
FROM tb_locacao
ORDER BY idVendedor;

-- Cria nova dimensão de vendedores
CREATE TABLE dim_vendedor (
	idVendedor INTEGER PRIMARY KEY,
	nomeVendedor TEXT,
	sexoVendedor TEXT,
	estadoVendedor TEXT
);


-- Exibe os tipos de dados das colunas da dimesão criada anteriormente
PRAGMA TABLE_INFO(dim_vendedor)

-- Adiciona dados da tabela tb_locacao na tabela tb_vendedor
INSERT INTO dim_vendedor (
	idVendedor,
	nomeVendedor,
	sexoVendedor,
	estadoVendedor
)
SELECT 
		idVendedor,
		nomeVendedor,
		sexoVendedor,
		estadoVendedor
FROM tb_locacao 
GROUP BY idVendedor;


-- Exibe a dimensão dim_vendedores
SELECT *
FROM dim_vendedor;




-- Exibe dados da dimensão data de locação
SELECT 
	substr(dataLocacao, 1, 4) || '-' || substr(dataLocacao, 5, 2) || '-' || substr(dataLocacao, 7, 2) AS dataLocacao,
	CAST(strftime('%j', date(substr(dataLocacao, 1, 4) || '-' || substr(dataLocacao, 5, 2) || '-' || substr(dataLocacao, 7, 2))) / 7 AS INTEGER) + 1 AS semanaLocacao,
	substr(dataLocacao, 7, 2) AS diaLocacao,
	substr(dataLocacao, 5, 2) AS mesLocacao,
	CASE
	    WHEN substr(dataLocacao, 5, 2) BETWEEN '01' AND '03' THEN 1
	    WHEN substr(dataLocacao, 5, 2) BETWEEN '04' AND '06' THEN 2
	    WHEN substr(dataLocacao, 5, 2) BETWEEN '07' AND '09' THEN 3
	    ELSE 4
  END AS trimestreLocacao,
	substr(dataLocacao, 1, 4) AS anoLocacao
FROM tb_locacao
ORDER BY dataLocacao



