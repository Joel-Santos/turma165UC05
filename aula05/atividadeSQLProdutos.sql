create database empresa;

-- Criação das Tabelas

CREATE TABLE IF NOT EXISTS Fornecedores (
ID SERIAL PRIMARY KEY,
NOME VARCHAR(255),
RUA VARCHAR(255),
CIDADE VARCHAR(255),
ESTADO CHAR(2)
);


CREATE TABLE IF NOT EXISTS Categorias (
 ID SERIAL PRIMARY KEY,
 NOME VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS Produtos (
 ID SERIAL PRIMARY KEY,
 NOME VARCHAR(255),
 QUANTIDADE INTEGER,
 PRECO NUMERIC(10, 2),
 FK_FORNECEDOR INTEGER,
 FK_CATEGORIA INTEGER,
 CONSTRAINT fk_fornecedor FOREIGN KEY (FK_FORNECEDOR) REFERENCES Fornecedores(id),
 CONSTRAINT fk_categoria FOREIGN KEY (FK_CATEGORIA) REFERENCES Categorias(id)
);



--Inserções 

insert  into categorias (NOME)
values ('Super Luxo'), ('Importado'), ('Tecnologia'), 
('Vintage'), ('Supremo');

insert into fornecedores (NOME, RUA, CIDADE, ESTADO)
values 
('Ajax SA', 'Rua Presidente Castelo Branco', 'Porto Alegre',  'RS'),
('Sansul SA' ,'Av Brasil', 'Rio de Janeiro' , 'RJ'),
( 'South Chairs' ,'Rua do Moinho', 'Santa Maria' ,'RS'),
( 'Elon Electro', 'Rua Apolo', 'São Paulo' , 'SP'),
( 'Mike electro', 'Rua Pedro da Cunha', 'Curitiba', 'PR');


insert into produtos(NOME, QUANTIDADE, PRECO, fk_FORNECEDOR ,fk_CATEGORIA)
values
('Cadeira azul', 30,  300.00 ,5, 5),
('Cadeira vermelha', 50, 2150.00, 2, 1),
('Guarda-roupa Disney', 400, 829.50, 4, 1),
('Torradeira Azul', 20, 9.90, 3, 1),
('TV', 30,  3000.25,  2,  2);



