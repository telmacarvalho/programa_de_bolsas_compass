-- Exibe todos os dados da tabela tb_locacao ordenado pelo seu id a fim de verificar se é preciso colocar 
-- na primeira forma (FN1)
SELECT * 
FROM tb_locacao tl
ORDER BY idLocacao;

-- Exibe os atributos do objeto idLocacao com dependências únicas ordenado pelo seu id, sem a coluna qdtDiaria, 
-- que pode ser calculado a partir diferença entre as datas de locação e de entrega, e formatando as colunas 
-- dataLocacao e dataEntrega para a forma ano-mês-dia com a fim de separar suas dependências na segunda forma (FN2)
SELECT 
	idLocacao,
	idCliente,
	idCarro,
	kmCarro,
	substr(dataLocacao, 1, 4) || '-' || substr(dataLocacao, 5, 2) || '-' || substr(dataLocacao, 7, 2) AS dataLocacao,
	horaLocacao,
	vlrDiaria, 
	substr(dataEntrega, 1, 4) || '-' || substr(dataLocacao, 5, 2) || '-' || substr(dataLocacao, 7, 2) AS dataEntrega,
	horaEntrega,
	idVendedor 
FROM tb_locacao
ORDER BY idLocacao;

-- Cria uma nova tabela de locacao com dependências únicas aplicando a segunda forma (FN2) 
CREATE TABLE tb_locacao_v2 (
  idLocacao INTEGER PRIMARY KEY,
  idCliente INTEGER,
  idCarro INTEGER,
  idVendedor INTEGER,
  kmCarro INTEGER,
  vlrDiaria DECIMAL(18,2),
  dataLocacao TEXT,
  horaLocacao TIME,
  dataEntrega TEXT,
  horaEntrega TIME,
  FOREIGN KEY (idCliente) REFERENCES tb_cliente(idCliente),
  FOREIGN KEY (idCarro) REFERENCES tb_carro(idCarro),
  FOREIGN KEY (idVendedor) REFERENCES tb_vendedor(idVendedor)
);

-- Exibe os tipos de dados das colunas da tabela criada anteriormente
PRAGMA TABLE_INFO(tb_locacao_v2);

-- Adiciona dados da tabela tb_locacao na tabela tb_Locacao_v2
INSERT INTO tb_Locacao_v2 
	(
	idLocacao, 
	idCliente, 
	idCarro, 
	kmCarro, 
	dataLocacao ,
	horaLocacao,
	vlrDiaria,
	dataEntrega,
	horaEntrega,
	idVendedor 
	)
SELECT 
	idLocacao, 
	idCliente, 
	idCarro, 
	kmCarro, 
	substr(dataLocacao, 1, 4) || '-' || substr(dataLocacao, 5, 2) || '-' || substr(dataLocacao, 7, 2),
	horaLocacao,
	vlrDiaria,
	substr(dataEntrega, 1, 4) || '-' || substr(dataLocacao, 5, 2) || '-' || substr(dataLocacao, 7, 2),
	horaEntrega,
	idVendedor 
FROM tb_locacao
ORDER BY idLocacao;


-- Exibe a tabela tb_locacao_v2 
SELECT *
FROM tb_locacao_v2;


-- Exibe os atributos do objeto idCliente ordenado pelo seu id a fim de separar suas dependências na segunda forma (FN2)
SELECT 
	idCliente,
	nomeCliente,
	cidadeCliente,
	estadoCliente,
	paisCliente
FROM tb_locacao 
ORDER BY idCliente;

-- Cria nova tabela de clientes sem duplicidades aplicando a segunda forma (FN2)
CREATE TABLE tb_cliente (
	idCliente INTEGER PRIMARY KEY,
	nomeCliente TEXT,
	cidadeCliente TEXT,
	estadoCliente TEXT,
	paisCliente TEXT
);

-- Exibe os tipos de dados das colunas da tabela criada anteriormente
PRAGMA TABLE_INFO(tb_cliente);

-- Adiciona dados da tabela tb_locacao na tabela tb_cliente
INSERT INTO tb_cliente(
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

-- Exibe a tabela tb_clientes
SELECT *
FROM tb_cliente;


-- Exibe os atributos do objeto idCarro ordenado pelo seu id a fim de separar suas dependências na segunda forma (FN2)
SELECT 
	idCarro,
	classiCarro,
	marcaCarro,
	modeloCarro,
	anoCarro,
	idcombustivel,
	tipoCombustivel
FROM tb_locacao 
ORDER BY idCarro; 

-- Cria nova tabela de carros sem duplicidades aplicando a segunda forma (FN2) e sem o atibuto tipoCombustível, 
-- o qual será atribuído em outra tabela, eliminando, assim, as dependências transitivas na terceira forma (FN3)
CREATE TABLE tb_carro (
  idCarro INTEGER PRIMARY KEY,
  classiCarro TEXT,
  marcaCarro TEXT,
  modeloCarro TEXT,
  anoCarro INTEGER,
  idcombustivel INTEGER,
  FOREIGN KEY (idcombustivel) REFERENCES tb_combustivel(idcombustivel)
);

-- Exibe os tipos de dados das colunas da tabela criada anteriormente
PRAGMA TABLE_INFO(tb_carro);

-- Adiciona dados da tabela tb_locacao na tabela tb_carro
INSERT INTO tb_carro (
	idCarro,
	classiCarro,
	marcaCarro,
	modeloCarro,
	anoCarro,
	idcombustivel
)
SELECT 
	idCarro,
	classiCarro,
	marcaCarro,
	modeloCarro,
	anoCarro,
	idcombustivel
FROM tb_locacao 
GROUP BY idCarro 
ORDER BY idCarro;

-- Exibe a tabela tb_carros
SELECT *
FROM tb_carro;


-- Exibe os atributos do objeto idCombustivel ordenado pelo seu id
SELECT 
	idcombustivel,
	tipoCombustivel 
FROM tb_locacao
ORDER BY idcombustivel; 

-- Cria nova tabela de combustível sem duplicidades aplicando a terceira forma (FN3)
CREATE TABLE tb_combustivel(
	idcombustivel INTEGER PRIMARY KEY,
	tipoCombustivel INTEGER
);

-- Exibe os tipos de dados das colunas da tabela criada anteriormente
PRAGMA TABLE_INFO(tb_combustivel);

-- Adiciona dados da tabela tb_locacao na tabela tb_combustivel
INSERT INTO tb_combustivel(
	idcombustivel,
	tipoCombustivel
)
SELECT 
	idcombustivel,
	tipoCombustivel 
FROM tb_locacao
GROUP BY idcombustivel 
ORDER BY idcombustivel;

-- Exibe a tabela tb_combustivel
SELECT *
FROM tb_combustivel;


--Exibe os atributos do objeto idVendendor ordenado pelo seu id a fim de separar suas dependências na segunda forma (FN2)
SELECT 
	idVendedor,
	nomeVendedor,
	sexoVendedor,
	estadoVendedor
FROM tb_locacao
ORDER BY idVendedor;

-- Cria nova tabela de vendedores sem duplicidades aplicando a segunda forma (FN2)
CREATE TABLE tb_vendedor (
	idVendedor INTEGER PRIMARY KEY,
	nomeVendedor,
	sexoVendedor,
	estadoVendedor
);

-- Exibe os tipos de dados das colunas da tabela criada anteriormente
PRAGMA TABLE_INFO(tb_vendedor);

-- Adiciona dados da tabela tb_locacao na tabela tb_vendedor
INSERT INTO tb_vendedor (
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

-- Exibe a tabela tb_vendedores
SELECT *
FROM tb_vendedor;
