-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Conte quantos clientes da tabela sales.customers tem menos de 30 anos

select count (birth_date)			
from sales.customers
where (current_date - birth_date)/365 < 30

-- (Exercício 2) Informe a idade do cliente mais velho e mais novo da tabela sales.customers

select 	
		max((current_date - birth_date)/365) as "mais velho",
		min((current_date - birth_date)/365) as "mais novo"
from sales.customers

-- (Exercício 3) Selecione todas as informações do cliente mais rico da tabela sales.customers
-- (possívelmente a resposta contém mais de um cliente)

select *
from sales.customers
where income = (select max(income) from sales.customers)

-- (Exercício 4) Conte quantos veículos de cada marca tem registrado na tabela sales.products
-- Ordene o resultado pelo nome da marca

select distinct (brand)
from sales.products

-- (Exercício 5) Conte quantos veículos existem registrados na tabela sales.products
-- por marca e ano do modelo. Ordene pela nome da marca e pelo ano do veículo

select (brand, model_year, model)
from sales.products