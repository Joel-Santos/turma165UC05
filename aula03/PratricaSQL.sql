create database videolocadora;

-- Criação das tabelas
create table if not exists genero(
	ID SERIAL primary key,
	NOME VARCHAR(50) not null unique
);

create table if not exists filme(
	ID SERIAL primary key,
	NOME VARCHAR(150) not null,
	FK_GENERO INT not null,
	constraint fk_genero 
	foreign key(FK_GENERO) references genero(ID)	
);

--1) Criar o banco de dados (base  e os registros que 
--existem na tabela

insert into genero(nome)
values ('Animação'), ('Terror'),('Ação'), ('Drama'),
('Comédia');

--Inserir os registros em filme

insert into filme(nome, fk_genero)
values
('Batman', 3),
('The Battle of the Dark River', 3),
('White Duck', 1),
('Breaking Barriers',4),
('The Two Hours', 2);


-- 3) Criar mais 5 registros na tabela filme 
insert into FILME(nome, fk_genero)
values ('Batman - o retorno', 3), ('Moana', 4),
('Pato Donald', 1), ('Hulk', 2), ('Tropa de Elite', 5);

-- 4) Criar mais dois registros na tabela genero 
insert into GENERO (nome)
values ('Documentario'), ('Suspense');

-- 5) Criar uma consulta que retorne todos os filmes do gênero Terror 

select nome from filme where fk_genero = 2;



-- 6) Criar uma consulta que retorne todos os filmes do 
--gênero Terror ou Drama
select nome from filme where fk_genero = 2 or fk_genero = 4;


--7) Criar uma consulta que retorne todos os filmes 
select nome from filme;

--8) Criar uma consulta que retorne todos os gêneros 
select nome from genero;

-- 9) Criar uma consulta que retorne todos os filmes 
-- que começam com a letra T 
select UPPER(nome) from filme where LOWER(nome) like 't%'; 

--10) Atualizar todos os filmes do gênero Ação para Drama
update filme
set fk_genero = 4
where fk_genero = 3;

--11)  Criar uma consulta que retorne o nome de todos os filmes 
-- e o nome do gênero
select f.nome as FILME, g.nome as GENERO
from filme f, genero g
where 
f.fk_genero  = g.id;

--Joins
select f.nome as FILME, g.nome as GENERO
from filme f
left join genero g
on f.fk_genero  = g.id;

--Joins
select f.nome as FILME, g.nome as GENERO
from filme f
right join genero g
on f.fk_genero  = g.id;


--Joins
select f.nome as FILME, g.nome as GENERO
from filme f
inner join genero g
on f.fk_genero  = g.id;

-- 13 Crie uma consulta que retorne todos os filmes ordenados 
-- alfabeticamente pelo nome.

select f.nome as FILME, g.nome as GENERO
from filme f, genero g
where 
f.fk_genero  = g.id
order by f.nome;



--13) Crie uma consulta que retorne todos os filmes cujo nome 
-- contenha a palavra "Dark".
select * from filme 
where LOWER(nome) like '%dark%';










