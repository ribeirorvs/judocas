CREATE TABLE filiado(
	id DOUBLE autoincrement,
	nome VARCHAR(50),
	registroCbj DOUBLE,
	dataNascimento DATETIME,
	dataCadastro DATETIME,
	telefone1 DOUBLE,
	telefone2 DOUBLE,
	email VARCHAR(100),
	cpf DOUBLE,
	observacoes VARCHAR(500),
	idRg DOUBLE,
	idEndereco DOUBLE
	PRIMARY KEY(id),
	FOREIGN KEY (idEndereco) REFERENCES endereco(id),
	FOREIGN KEY (idRg) REFERENCES rg(id)
);

CREATE TABLE endereco(
	id DOUBLE autoincrement,
	rua VARCHAR(100),
	numero TINYINT,
	bairro VARCHAR(50),
	cidade VARCHAR(50),
	estado VARCHAR(50),
	cep DOUBLE,
	PRIMARY KEY(id)
);

CREATE TABLE entidade(
	id DOUBLE autoincrement,
	cnpj DOUBLE,
	telefone1 DOUBLE,
	telefone2 DOUBLE,
	idEndereco DOUBLE,
	PRIMARY KEY(id),
	FOREIGN KEY (idEndereco) REFERENCES endereco(id)
);

CREATE TABLE professor(
	id DOUBLE autoincrement,
	idFiliado DOUBLE,
	PRIMARY KEY(id),
	FOREIGN KEY (idFiliado) REFERENCES filiado(id)
);

CREATE TABLE faixa(
	id DOUBLE autoincrement,
	corFaixa VARCHAR(20),
	PRIMARY KEY(id)
);

CREATE TABLE filiadoFaixa(
	idFiliado DOUBLE,
	idFaixa DOUBLE,
	dataEntrega DATETIME,
	FOREIGN KEY (idFiliado) REFERENCES filiado(id),
	FOREIGN KEY (idFaixa) REFERENCES faixa(id)
);

CREATE TABLE professorEntidade(
	idProfessor DOUBLE,
	idEntidade DOUBLE,
	FOREIGN KEY (idProfessor) REFERENCES professor(id),
	FOREIGN KEY (idEntidade) REFERENCES entidade(id)
);

CREATE TABLE aluno(
	id DOUBLE autoincrement,
	idFiliado DOUBLE,
	idProfessor DOUBLE,
	idEntidade DOUBLE,
	PRIMARY KEY(id),
	FOREIGN KEY (idFiliado) REFERENCES filiado(id),
	FOREIGN KEY (idProfessor) REFERENCES professor(id),
	FOREIGN KEY (idEntidade) REFERENCES entidade(id)
);

CREATE TABLE rg(
	id DOUBLE autoincrement,
	numero DOUBLE,
	orgaoExpedidor VARCHAR(8),
	PRIMARY KEY(id)
);