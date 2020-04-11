-- POSTGRESQL -- SGBD

-- Listar as bases de dados
\l

-- Criar uma base de dados create database aula R

-- Remover uma base de dados
DROP DATABASE aular;

-- Criar uma base de dados
CREATE DATABASE aular;

-- Conectar a uma base de dados
\c aular

-- Criar uma tabela
CREATE TABLE produto(
    codigo      serial      PRIMARY KEY,
    nome        varchar(50) not null,
    preco       float       not null,
    quantidade  int         not null

);

-- Listar os objetos do banco de dados
\dados

-- Descrever a tabela
\d produto


-- INSERT -- Inserir dados na tabela

INSERT INTO produto(nome, preco, quantidade) VALUES('Notebook', 1500.0, 10);
INSERT INTO produto(nome, preco, quantidade) VALUES('Sofá', 2000.0, 4);
INSERT INTO produto(nome, preco, quantidade) VALUES('Tablet', 500.0, 2);
INSERT INTO produto(nome, preco, quantidade) VALUES('Iphone 14', 14000.0, 4);
INSERT INTO produto(nome, preco, quantidade) VALUES('Samsung Galaxy s34', 23000.0, 4);
INSERT INTO produto(nome, preco, quantidade) VALUES('Xbosta One', 300.0, 7);
INSERT INTO produto(nome, preco, quantidade) VALUES('PS 5', 3000.0, 12);
INSERT INTO produto(nome, preco, quantidade) VALUES('Mac book pro', 100000.0, 10);
INSERT INTO produto(nome, preco, quantidade) VALUES('Dell', 1200.0, 3);
INSERT INTO produto(nome, preco, quantidade) VALUES('Super Nintendo', 350.0, 17);
INSERT INTO produto(nome, preco, quantidade) VALUES('Mega Driver', 100.0, 3);


-- SELECT  -- Seleção dos dados de tabelas
SELECT nome, preco FROM produto;

