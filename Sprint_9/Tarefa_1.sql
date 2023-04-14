-- Exibe todos os dados da tabela tb_locacao 
SELECT * 
FROM tb_locacao tl
ORDER BY idLocacao 

-- Exibe atributos do objeto idCliente ordenado pelo seu id
SELECT 
	idCliente,
	nomeCliente,
	cidadeCliente,
	estadoCliente,
	paisCliente
FROM tb_locacao 
ORDER BY idCliente 

-- Cria nova tabela de clientes sem duplicidades
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


-- Exibe atributos do objeto idCarro prdenado pelo seu id
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

-- Cria nova tabela de carros sem duplicidades
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


-- Exibe atributos do objeto idCombustivel ordenado pelo seu id
SELECT 
	idcombustivel,
	tipoCombustivel 
FROM tb_locacao
ORDER BY idcombustivel 

-- Cria nova tabela de combustível sem duplicidades 
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


--Exibe atributos do objeto idVendendor ordenado pelo seu id
SELECT 
	idVendedor,
	nomeVendedor,
	sexoVendedor,
	estadoVendedor
FROM tb_locacao
ORDER BY idVendedor 

-- Cria nova tabela de vendedores sem duplicidades
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

-- Exibe atributos do objeto idCombustivel com dependências únicas ordenado pelo seu id
SELECT 
	idLocacao,
	idCliente,
	idCarro,
	kmCarro,
	dataLocacao,
	horaLocacao,
	qtdDiaria,
	vlrDiaria,
	dataEntrega,
	horaEntrega,
	idVendedor 
FROM tb_locacao
ORDER BY idLocacao 
	
-- Cria uma nova tabela de locacao com dependências únicas
CREATE TABLE tb_locacao2
AS SELECT 
		idLocacao,
		idCliente,
		idCarro,
		kmCarro,
		dataLocacao,
		horaLocacao,
		qtdDiaria,
		vlrDiaria,
		dataEntrega,
		horaEntrega,
		idVendedor 
FROM tb_locacao
ORDER BY idLocacao 

-- Exibe a tabela tb_locacao 
SELECT *
FROM tb_locacao2  


