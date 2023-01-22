
-- EXEMPLOS ########################################################################

-- (Exemplo 1) Criação de tabela a partir de uma query
-- Crie uma tabela chamada customers_age com o id e a idade dos clientes. 
-- Chame-a de temp_tables.customers_age

select
	customer_id,
	datedif('years', birth_date, current_date) idade_cliente 
	into temp_tables.customers_age
from sales.customers

select * 
from temp_tables.customers_age

-- (Exemplo 2) Criação de tabela a partir do zero
-- Crie uma tabela com a tradução dos status profissionais dos clientes. 
-- Chame-a de temp_tables.profissoes

select distinct professional_status
from sales.customers

create table temp_tables.profissoes (
	professional_status varchar,
	status_professional varchar
)

insert into temp_tables.profissoes
(professional_status, status_professional)

values
('freelancer', 'freelancer'),
('retired', 'aposentado'),
('clt', 'clt'),
('self_emplyed', 'autônomo(a)'),
('other', 'outro'),
('businessmam', 'empresário(a)'),
('civil_servant', 'funcionário(a) público'),
('student', 'estudante')

select * 
from temp_tables.profissoes

-- (Exemplo 3) Deleção de tabelas
-- Delete a tabela temp_tables.profissoes

drop table temp_tables.profissoes


