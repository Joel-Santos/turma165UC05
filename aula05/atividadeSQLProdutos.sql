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


-- 1. Crie uma regra para garantir que o nome de um 
-- produto seja único na tabela produtos
alter table produtos add constraint unique_nome_produto unique(nome);

-- 2. Defina uma constraint para garantir que o preço dos 
-- produtos nunca seja menor que zero.
alter table produtos add constraint check_preco check(preco>=0);

insert into produtos(NOME, QUANTIDADE, PRECO, fk_FORNECEDOR ,fk_CATEGORIA)
values
('Cadeira azul', 30,  -500 ,5, 5);


-- 3. Implemente uma constraint que assegure 
-- que a coluna quantidade na tabela produtos nunca seja nula.

alter table produtos  alter column quantidade set not null;


-- 4. Adicione uma constraint para garantir que o estado dos 
-- fornecedores sempre siga o padrão de duas letras, como "SP" ou "RJ".
alter table fornecedores add constraint check_estado check(estado ~'^[A-Z]{2}$');

-- 5. Crie uma constraint para que o nome das categorias na tabela categorias seja único.
alter table categorias add constraint unique_nome_catagoria unique(nome);


-- 6. INSERIR dados de 2 produtos de categoria 3 e qualquer fornecedor
insert into produtos(id, NOME, QUANTIDADE, PRECO, fk_FORNECEDOR ,fk_CATEGORIA)
values
(6, 'Cadeira preta', 30,  300.00 ,4, 3),(7, 'Cadeira rosa', 30,  300.00 ,3, 3);

-- 7. INSERIR dados de 2 fornecedores distintos, 
-- sendo do Estado do RN e outro do estado da PB;
insert into fornecedores (ID, NOME, RUA, CIDADE, ESTADO)
values 
(6, 'Senac RN', 'Av. Almirante Alexandrino de Alencar', 'Natal',  'RN'),
(7, 'Senac PB', 'Av. Almirante Alexandrino de Alencar', 'João Pessoa',  'PB');

-- 8. INSERIR dados de mais 1 categoria de nome Nacional
insert into categorias(nome)
values('Nacional');
























