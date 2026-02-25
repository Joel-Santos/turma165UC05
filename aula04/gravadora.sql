create database gravadora;

CREATE TABLE IF NOT EXISTS GENERO (
    ID SERIAL PRIMARY KEY,
    NOME VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS ARTISTA (
    ID SERIAL PRIMARY KEY,
    NOME VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS MUSICA (
    ID SERIAL PRIMARY KEY,
    TITULO VARCHAR(255) NOT NULL,
    ANO INT NOT NULL,
    FK_GENERO INT NOT NULL,
    FK_ARTISTA INT NOT NULL,
    CONSTRAINT fr_genero FOREIGN KEY (FK_GENERO) REFERENCES GENERO(ID),
    CONSTRAINT fr_artista FOREIGN KEY (FK_ARTISTA) REFERENCES ARTISTA(ID)
);

insert into genero (nome)
values ('Pop'), ('Rock Alternativo'), ('Funk');

insert into artista(nome)
values ('The Weeknd'), ('Imagine Dragons'), ('Anitta');

insert into musica (titulo, ano, fk_genero, fk_artista)
values 
('Blinding Lights', 2019, 1, 1), 
('Believer', 2017, 2, 2), 
('Show das Poderosas', 2013, 3, 3);


-- 1) Liste todos os gêneros cadastrados.
select * from genero 

-- 2) Liste apenas o nome dos artistas.
select nome from artista;

-- 3) Liste o título de todas as músicas.
select titulo from musica;

-- 4) Liste todos os dados das músicas do gênero com id = 1.
select * from musica where fk_genero = 1;

-- 5) Liste todas as músicas do artista com id = 3.
select * from musica where fk_artista = 3;

-- 6) Liste os gêneros ordenados pelo nome em ordem crescente.
select nome from genero order by nome;


-- 7) Liste os artistas ordenados pelo nome em ordem decrescente.
select nome from artista order by nome desc;

-- 8) Liste as músicas cujo título contenha a palavra “show”.
select titulo from musica where LOWER(titulo) like '%show%';



























