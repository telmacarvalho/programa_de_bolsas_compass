-- Exibe todos os dados da tabela tb_locacao ordenado pelo seu id a fim de verificar se é preciso colocar na primeira forma (FN1)
SELECT * 
FROM tb_locacao tl
ORDER BY idLocacao 

-- Exibe os atributos do objeto idCliente ordenado pelo seu id a fim de separar suas dependências na segunda forma (FN2)
SELECT 
	idCliente,
	nomeCliente,
	cidadeCliente,
	estadoCliente,
	paisCliente
FROM tb_locacao 
ORDER BY idCliente 

-- Cria nova tabela de clientes sem duplicidades aplicando a segunda forma (FN2)
CREATE TABLE tb_cliente
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
FROM tb_cliente


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
ORDER BY idCarro 

-- Cria nova tabela de carros sem duplicidades aplicando a segunda forma (FN2) e sem o atibuto tipoCombustível, 
-- o qual será atribuído em outra tabela, eliminando, assim, as dependências transitivas na terceira forma (FN3)
CREATE TABLE tb_carro 
AS SELECT 
		idCarro,
		classiCarro,
		marcaCarro,
		modeloCarro,
		anoCarro,
		idcombustivel
FROM tb_locacao 
GROUP BY idCarro 
ORDER BY idCarro 

-- Exibe a tabela tb_carros
SELECT *
FROM tb_carro


-- Exibe os atributos do objeto idCombustivel ordenado pelo seu id
SELECT 
	idcombustivel,
	tipoCombustivel 
FROM tb_locacao
ORDER BY idcombustivel 

-- Cria nova tabela de combustível sem duplicidades aplicando a terceira forma (FN3)
CREATE TABLE tb_combustivel
AS SELECT 
		idcombustivel,
		tipoCombustivel 
FROM tb_locacao
GROUP BY idcombustivel 
ORDER BY idcombustivel 

-- Exibe a tabela tb_combustivel
SELECT *
FROM tb_combustivel 


--Exibe os atributos do objeto idVendendor ordenado pelo seu id a fim de separar suas dependências na segunda forma (FN2)
SELECT 
	idVendedor,
	nomeVendedor,
	sexoVendedor,
	estadoVendedor
FROM tb_locacao
ORDER BY idVendedor 

-- Cria nova tabela de vendedores sem duplicidades aplicando a segunda forma (FN2)
CREATE TABLE tb_vendedor
AS SELECT 
		idVendedor,
		nomeVendedor,
		sexoVendedor,
		estadoVendedor
FROM tb_locacao 
GROUP BY idVendedor 

-- Exibe a tabela tb_vendedores
SELECT *
FROM tb_vendedor


-- Exibe todos os dados da tabela tb_locacao 
SELECT * 
FROM tb_locacao tl
ORDER BY idLocacao 

-- Exibe os atributos do objeto idLocacao com dependências únicas ordenado pelo seu id, sem a coluna qdtDiaria, 
-- que pode ser calculado a partir das datas de locação e ede entrega, e formatando as colunas dataLocacao e dataEntrega 
-- para a forma ano-mês-dia
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
ORDER BY idLocacao

-- Cria uma nova tabela de locacao com dependências únicas aplicando a segunda forma (FN2)
CREATE TABLE tb_locacao_v2
AS SELECT 
		idLocacao,
		idCliente,
		idCarro,
		kmCarro,
		substr(dataLocacao, 1, 4) || '-' || substr(dataLocacao, 5, 2) || '-' || substr(dataLocacao, 7, 2) AS dataLocacao,
		horaLocacao,
		qtdDiaria,
		vlrDiaria,
		substr(dataEntrega, 1, 4) || '-' || substr(dataLocacao, 5, 2) || '-' || substr(dataLocacao, 7, 2) AS dataEntrega,
		horaEntrega,
		idVendedor 
FROM tb_locacao
ORDER BY idLocacao 

-- Exibe a tabela tb_locacao_v2 
SELECT *
FROM tb_locacao_v2
