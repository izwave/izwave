-------------------------- DDL (Data Definition Language) --------------------------

-- Criando um banco de dados
CREATE DATABASE IF NOT EXISTS bancodados;

-- Selecionando o banco de dados
USE bancodados;

-- Criando uma tabela chamada "tabela" com colunas e tipos de dados
CREATE TABLE IF NOT EXISTS tabela (
    nome VARCHAR(30),
    idade TINYINT(3),
    sexo CHAR(1),
    peso FLOAT,
    altura FLOAT,
    nacionalidade VARCHAR(20)
);

-- Acessando o servidor local pelo terminal
-- cmd.exe> cd "c:\xampp\mysql\bin"
-- > mysql.exe -u root --password
-- > enter

-- Mostrando todos os bancos de dados
SHOW DATABASES;

-- Selecionando um banco de dados
USE database-name;

-- Mostrando o status
STATUS;

-- Mostrando as tabelas do banco de dados selecionado
SHOW TABLES;

-- Mostrando a estrutura da tabela
DESCRIBE tabela;

-- Apagando um banco de dados
DROP DATABASE IF EXISTS databasename;

-- Criando um banco de dados com constraints (especificando parâmetros)
CREATE DATABASE IF NOT EXISTS databasename
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

-- Criando uma tabela mais inteligente
CREATE TABLE IF NOT EXISTS pessoa (
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil'
) DEFAULT CHARSET = utf8;

-- Criando uma tabela com índice e chave primária
CREATE TABLE IF NOT EXISTS pessoa (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;

-- Inserindo dados na tabela
INSERT INTO tabela
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

-- Selecionando tudo da tabela
SELECT * FROM tabela;

-------------------------- DML (Data Manipulation Language) --------------------------

-- Inserindo dados na tabela usando DEFAULT
INSERT INTO pessoa
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Creuza', '1990-12-30', 'M', '50.2', '1.83', DEFAULT);

-- Inserindo dados na tabela onde a ordem é a mesma das colunas
INSERT INTO pessoa
VALUES
(DEFAULT, 'Adalgiza', '1930-11-02', 'F', '63.2', '1.73', 'Irlanda');

-- Inserindo múltiplos valores onde a ordem é a mesma das colunas
INSERT INTO pessoa
VALUES
(DEFAULT, 'Ana', '1975-12-22', 'F', '52.2', '1.43', 'EUA'),
(DEFAULT, 'Pedro', '2000-07-15', 'M', '52.2', '145', 'Brasil'),
(DEFAULT, 'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

-- Adicionando nova coluna à tabela
ALTER TABLE tabela
ADD COLUMN profissao VARCHAR(10);

-- Removendo uma coluna da tabela
ALTER TABLE tabela
DROP COLUMN profissao;

-- Adicionando nova coluna em uma posição específica da tabela (após a coluna nome)
ALTER TABLE tabela
ADD COLUMN profissao VARCHAR(10) AFTER nome;

-- Adicionando nova coluna na primeira posição da tabela
ALTER TABLE tabela
ADD COLUMN profissao VARCHAR(10) FIRST;

-- Modificando definições
ALTER TABLE tabela
MODIFY COLUMN profissao VARCHAR(20);

-- Renomeando coluna da tabela
ALTER TABLE tabela
CHANGE COLUMN profissao prof VARCHAR(20));

-- Renomeando tabela
ALTER TABLE tabela
RENAME TO gafanhotos;

-- Criando uma tabela caso não exista
CREATE TABLE IF NOT EXISTS cursos (
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED,
    totalaulas INT UNSIGNED,
    ano YEAR DEFAULT '2016'
) DEFAULT CHARSET = utf8;

-- Adicionando chave primária
ALTER TABLE tabela
ADD PRIMARY KEY(coluna);

-- Apagando tabela se existir
DROP TABLE IF EXISTS tabela;