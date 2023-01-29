/*CREATE TABLE funcionarios (
	codigo SERIAL NOT NULL PRIMARY KEY,
	primeiro_nome VARCHAR(50) NOT NULL,
	segundo_nome VARCHAR(50) NOT NULL,
	ultimo_nome VARCHAR(50) NOT NULL,
	data_nascimento DATE,
	cpf VARCHAR(14),
	rg VARCHAR(8),
	endereco VARCHAR(50),
	cep VARCHAR(9),
	cidade VARCHAR(30),
	fone VARCHAR(13),
	codigo_departamento INT NOT NULL,
	funcao VARCHAR(20),
	salario DECIMAL(10,2)
);

CREATE TABLE departamento (
	codigo SERIAL NOT NULL PRIMARY KEY,
	nome VARCHAR(50),
	localizacao VARCHAR(50),
	codigo_funcionario INT NOT NULL
);

ALTER TABLE funcionarios
ADD CONSTRAINT fk_funcionarios_departamento FOREIGN KEY (codigo_departamento)
REFERENCES departamento (codigo)

ALTER TABLE departamento
ADD CONSTRAINT fk_departamento_funcionarios FOREIGN KEY (codigo_funcionario)
REFERENCES funcionarios (codigo)*/

