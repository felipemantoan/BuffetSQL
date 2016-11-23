/*
	23/11/2016
*/

CREATE DATABASE buffet;
USE buffet;

CREATE TABLE contratantes(
	id INT identity(1,1),
	nome VARCHAR(100) NOT NULL,
	telefone VARCHAR(14) NOT NULL, 
	cep VARCHAR(11) NOT NULL,
	cidade VARCHAR(60) NOT NULL,
	bairro VARCHAR(80) NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	CONSTRAINT PRK_contratantes PRIMARY KEY(id)
);

CREATE TABLE pessoa_fisica(
	id_cont INT NOT NULL,
	rg VARCHAR(12) NOT NULL,
	cpf VARCHAR(14) NOT NULL,
	CONSTRAINT UNK_CPF_PF UNIQUE(cpf),
	CONSTRAINT FRK_PF_cont FOREIGN KEY(id_cont) REFERENCES contratantes(id),
	CONSTRAINT PRK_pessoa_fisica PRIMARY KEY(id_cont)
);

CREATE TABLE pessoa_juridica(
	id_cont INT NOT NULL,
	cnpj VARCHAR(18) NOT NULL,
	razao_social VARCHAR(100) NOT NULL,
	CONSTRAINT UNK_CNPJ_PJ UNIQUE(cnpj),
	CONSTRAINT FRK_PJ_cont FOREIGN KEY(id_cont) REFERENCES contratantes(id),
	CONSTRAINT PRK_pessoa_juridica PRIMARY KEY(id_cont)
);

CREATE TABLE funcionarios(
	id INT IDENTITY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	rg VARCHAR(12) NOT NULL,
	cpf VARCHAR(14) NOT NULL,
	telefone VARCHAR(14) NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	bairro VARCHAR(80) NOT NULL,
	cidade VARCHAR(60) NOT NULL,
	salario MONEY NOT NULL,
	dt_nasc DATE NOT NULL,
	CONSTRAINT PRK_funcionarios PRIMARY KEY(id),
	CONSTRAINT UNK_CPF_fun UNIQUE (cpf)
);

CREATE TABLE producao(
	cargo VARCHAR(60) NOT NULL,
	id_func INT NOT NULL,
	CONSTRAINT FRK_prod_fun FOREIGN KEY (id_func) REFERENCES funcionarios(id),
	CONSTRAINT PRK_producao PRIMARY KEY(id_func)
);

CREATE TABLE atendimento(
	ramal numeric(5) NOT NULL,
	id_func INT NOT NULL,
	CONSTRAINT FRK_atend_fun FOREIGN KEY (id_func) REFERENCES funcionarios(id),
	CONSTRAINT PRK_atendimento PRIMARY KEY(id_func)
);

CREATE TABLE cardapio(
	id INT IDENTITY NOT NULL,
	prato VARCHAR(100) NOT NULL,
	qtde FLOAT NOT NULL,
	ingredientes text not null,
	preco MONEY NOT NULL,
	CONSTRAINT PRK_cardapios PRIMARY KEY(id)
);