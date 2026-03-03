-- Lista Funções agregadas (COUNT(), SUM(), AVG(), MIN(), MAX()) e group by 
--1) Liste cada categoria e a quantidade 
-- total de produtos cadastrados nela.
select c.nome, count(*) as quantidade 
from produtos p, categorias c 
where p.fk_categoria = c.id 
group by c.nome; 

-- 2) Liste cada fornecedor e a soma total dos estoques 
-- (quantidade) dos produtos fornecidos por ele.
select  f.nome, sum(p.quantidade) as estoque 
from fornecedores f , produtos p 
where p.fk_fornecedor = f.id 
group by f.nome;

-- 3) Para cada categoria, mostre o preço médio dos produtos.
select c.nome, ROUND(AVG(p.preco),2) as media_preco
from categorias c, produtos p  
where p.fk_categoria = c.id
group by c.nome;

-- 4) Para cada fornecedor, mostre o menor preço 
-- encontrado entre os produtos que ele fornece.
select f.nome, MIN(p.preco) as menor_preco
from fornecedores f , produtos p 
where p.fk_fornecedor = f.id 
group by f.nome;

-- 5) Mostre para cada categoria o maior preço 
-- encontrado e a quantidade de produtos cadastrados nela.
select c.nome as categoria, MAX(p.preco) as maior_preco, 
count(*) as total_produtos
from categorias c , produtos p 
where c.id = p.fk_categoria
group by c.nome;

-- 6) Mostre cada fornecedor e a quantidade 
-- de produtos diferentes que ele fornece.
select f.nome as fornecedor, count(p.id) as total_produtos
from fornecedores f , produtos p 
where f.id = p.fk_fornecedor 
group by fornecedor  order by total_produtos desc;

--7) Mostre cada categoria e o valor total em estoque 
-- (quantidade × preço) dos produtos cadastrados nela.
select c.nome as categoria , 
SUM(p.quantidade * p.preco) as valor_total_estoque
from categorias c , produtos p 
where c.id = p.fk_categoria
group by categoria 
order by valor_total_estoque desc;


