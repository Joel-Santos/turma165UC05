/* Lógico_1: */

CREATE TABLE Livro (
    isbn VARCHAR(13) PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(40),
    editora VARCHAR(40),
    ano_publicacao INTEGER
);

CREATE TABLE Leitor (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(9)
);

CREATE TABLE Emprestimo_Alugar (
    data_retirada DATE,
    data_devolucao DATE,
    fk_Leitor_cpf VARCHAR(11),
    fk_Livro_isbn VARCHAR(13)
);

CREATE TABLE Paciente (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(9),
    endereco VARCHAR(100)
);

CREATE TABLE Dentista (
    cro VARCHAR(7) PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(20)
);

CREATE TABLE Consulta_Atendimento (
    data DATE,
    hora TIME,
    descricao VARCHAR(100),
    fk_Dentista_cro VARCHAR(7),
    fk_Paciente_cpf VARCHAR(11)
);

CREATE TABLE Produto (
    id_produto INTEGER PRIMARY KEY,
    nome VARCHAR(40),
    marca VARCHAR(40),
    preco FLOAT,
    quantidade_estoque INTEGER,
    fk_Fornecedor_cnpj VARCHAR(14)
);

CREATE TABLE Fornecedor (
    cnpj VARCHAR(14) PRIMARY KEY,
    nome_fantasia VARCHAR(20)
);

CREATE TABLE Cliente (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(9),
    email VARCHAR(100),
    endereco VARCHAR(100)
);

CREATE TABLE Venda (
    id_venda INTEGER PRIMARY KEY,
    data DATE,
    valor_total FLOAT,
    forma_pagamento VARCHAR(10),
    fk_Cliente_cpf VARCHAR(11)
);

CREATE TABLE itens_venda_Produto_Venda (
    quantidade INTEGER,
    preco_unitario FLOAT,
    fk_Produto_id_produto INTEGER,
    fk_Venda_id_venda INTEGER
);

CREATE TABLE Curso (
    id_curso INTEGER PRIMARY KEY,
    idioma VARCHAR(15),
    tipo_curso VARCHAR(15)
);

CREATE TABLE Professor (
    matricula VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(20)
);

CREATE TABLE Turma (
    id_turma INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    data_inicio DATE,
    data_termino DATE,
    fk_Curso_id_curso INTEGER,
    fk_Professor_matricula VARCHAR(10),
    fk_Aluno_matricula VARCHAR(10
);

CREATE TABLE Aluno (
    matricula VARCHAR(10 PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(100),
    telefone VARCHAR(9),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE hospede (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(9),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE quarto (
    id_quarto INTEGER PRIMARY KEY,
    numero INTEGER,
    valor_diaria FLOAT,
    tipo_quarto VARCHAR(20)
);

CREATE TABLE Reserva (
    id_reserva INTEGER PRIMARY KEY,
    data_entrada DATE,
    data_saida DATE,
    valor_total FLOAT,
    fk_quarto_id_quarto INTEGER,
    fk_hospede_cpf VARCHAR(11)
);
 
ALTER TABLE Emprestimo_Alugar ADD CONSTRAINT FK_Emprestimo_Alugar_1
    FOREIGN KEY (fk_Leitor_cpf)
    REFERENCES Leitor (cpf);
 
ALTER TABLE Emprestimo_Alugar ADD CONSTRAINT FK_Emprestimo_Alugar_2
    FOREIGN KEY (fk_Livro_isbn)
    REFERENCES Livro (isbn);
 
ALTER TABLE Consulta_Atendimento ADD CONSTRAINT FK_Consulta_Atendimento_1
    FOREIGN KEY (fk_Dentista_cro)
    REFERENCES Dentista (cro);
 
ALTER TABLE Consulta_Atendimento ADD CONSTRAINT FK_Consulta_Atendimento_2
    FOREIGN KEY (fk_Paciente_cpf)
    REFERENCES Paciente (cpf);
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_2
    FOREIGN KEY (fk_Fornecedor_cnpj)
    REFERENCES Fornecedor (cnpj)
    ON DELETE CASCADE;
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_2
    FOREIGN KEY (fk_Cliente_cpf)
    REFERENCES Cliente (cpf)
    ON DELETE CASCADE;
 
ALTER TABLE itens_venda_Produto_Venda ADD CONSTRAINT FK_itens_venda_Produto_Venda_1
    FOREIGN KEY (fk_Produto_id_produto)
    REFERENCES Produto (id_produto);
 
ALTER TABLE itens_venda_Produto_Venda ADD CONSTRAINT FK_itens_venda_Produto_Venda_2
    FOREIGN KEY (fk_Venda_id_venda)
    REFERENCES Venda (id_venda);
 
ALTER TABLE Turma ADD CONSTRAINT FK_Turma_2
    FOREIGN KEY (fk_Curso_id_curso)
    REFERENCES Curso (id_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE Turma ADD CONSTRAINT FK_Turma_3
    FOREIGN KEY (fk_Professor_matricula)
    REFERENCES Professor (matricula)
    ON DELETE RESTRICT;
 
ALTER TABLE Turma ADD CONSTRAINT FK_Turma_4
    FOREIGN KEY (fk_Aluno_matricula)
    REFERENCES Aluno (matricula)
    ON DELETE RESTRICT;
 
ALTER TABLE Reserva ADD CONSTRAINT FK_Reserva_2
    FOREIGN KEY (fk_quarto_id_quarto)
    REFERENCES quarto (id_quarto)
    ON DELETE CASCADE;
 
ALTER TABLE Reserva ADD CONSTRAINT FK_Reserva_3
    FOREIGN KEY (fk_hospede_cpf)
    REFERENCES hospede (cpf)
    ON DELETE CASCADE;