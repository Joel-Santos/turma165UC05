create table if not exists ALUNOS(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) not NULL,
	curso VARCHAR(50) not null,
	nota NUMERIC(4,2) not null
);

INSERT INTO ALUNOS (nome, curso, nota) VALUES
('Ana Souza', 'Engenharia', 8.50),
('Bruno Lima', 'Direito', 7.80),
('Carla Mendes', 'Medicina', 9.20),
('Daniel Rocha', 'Administração', 6.75),
('Eduarda Alves', 'Psicologia', 8.90),
('Felipe Martins', 'Ciência da Computação', 9.50),
('Gabriela Costa', 'Arquitetura', 7.40),
('Henrique Oliveira', 'Engenharia', 8.10),
('Isabela Pereira', 'Enfermagem', 9.00),
('João Carvalho', 'História', 6.50),
('Larissa Fernandes', 'Biomedicina', 8.70),
('Lucas Ribeiro', 'Ciência da Computação', 9.80),
('Mariana Gomes', 'Publicidade', 7.95),
('Nathan Silva', 'Matemática', 8.30),
('Olivia Santos', 'Fisioterapia', 8.60),
('Paulo Henrique', 'Direito', 7.10),
('Queila Andrade', 'Pedagogia', 9.15),
('Rafael Teixeira', 'Engenharia', 6.90),
('Sofia Batista', 'Design', 8.45),
('Thiago Nunes', 'Administração', 7.85);

-- FUNÇÕES AGREGADAS 
-- São utilizadas para realizar cálculos em várias linhas de uma tabela 
-- e retornar um único resultado

-- COUNT (Contagem)
select COUNT(*) as total from alunos;
select count(nota) as alunos_acima_media from alunos where nota >= 7.6;

-- SUM (SOMAR)
select SUM(nota) from alunos;

-- AVG (Média)
select AVG(nota) from alunos;

-- MAX (Máximo)
select MAX(NOTA) from ALUNOS; 

--MIN (minimo)
select MIN(NOTA) from ALUNOS; 

select nome, nota from alunos where nota = (select min(nota) from alunos);

-- GROUP BY (agrupamento)
select curso, AVG(nota) as Media from alunos group by curso;

select curso, count(*) as quantidade_alunos from alunos group by curso;

-- Apresentar  a maior nota por curso e o nome do aluno que tem a nota.
select a.curso, a.nome, a.nota from alunos a
where nota = (select max(nota) from alunos where curso = a.curso ) order by curso;




