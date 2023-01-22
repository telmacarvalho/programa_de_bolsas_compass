 -- Ex_10

--A comissão de um vendedor é definida a partir de um percentual sobre o total 
--de vendas (quantidade * valor unitário) por ele realizado. O percentual de 
--comissão de cada vendedor está armazenado na coluna perccomissao, tabela 
--tbvendedor. 
--Com base em tais informações, calcule a comissão de todos os vendedores, 
--considerando todas as vendas armazenadas na base de dados com status concluído.
--As colunas presentes no resultado devem ser vendedor, valor_total_vendas e 
--comissao. O valor de comissão deve ser apresentado em ordem decrescente 
--arredondado na segunda casa decimal.

select 
    t.nmvdd as vendedor, 
    sum(t2.qtd*t2.vrunt) as valor_total_vendas,
    round(sum(t2.qtd*t2.vrunt*perccomissao/100),2) as comissao
from tbvendedor as t
left join tbvendas t2
    on  t.cdvdd = t2.cdvdd
where status = 'Concluído'
group by t.nmvdd, valor_total_vendas, comissao
order by comissao desc
