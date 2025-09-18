CREATE DATABASE aula_pratica;

USE aula_pratica;

CREATE TABLE pessoas(
	id_pessoa INT AUTO_INCREMENT PRIMARY KEY,
	altura FLOAT,
	nome_pessoa VARCHAR(255) NOT NULL
);

CREATE TABLE paises(
	id_pais INT AUTO_INCREMENT PRIMARY KEY,
	nome_pais VARCHAR(255) NOT NULL
);

CREATE TABLE passaportes(
	id_passaporte INT AUTO_INCREMENT PRIMARY KEY,
	cod_passaporte CHAR(8) NOT NULL,
	pessoa_id INT UNIQUE,
	pais_id INT UNIQUE,
	CONSTRAINT fk_passaporte_pessoa FOREIGN KEY(pessoa_id) REFERENCES pessoas(id_pessoa),
	CONSTRAINT fk_passaporte_pais FOREIGN KEY(pais_id) REFERENCES paises(id_pais)
);

CREATE TABLE pets(
	id_pets INT AUTO_INCREMENT PRIMARY KEY,
	nome_pet VARCHAR(255) NOT NULL,
	pedigre VARCHAR(255),
	pessoa_id INT,
	CONSTRAINT fk_pets_pessoas FOREIGN KEY(pessoa_id) REFERENCES pessoas(id_pessoa) 
);

-- Inserindo pessoas
INSERT INTO pessoas (altura, nome_pessoa) VALUES (1.75, 'Ana Clara');
INSERT INTO pessoas (altura, nome_pessoa) VALUES (1.68, 'Bruno Silva');
INSERT INTO pessoas (altura, nome_pessoa) VALUES (1.82, 'Carlos Eduardo');
INSERT INTO pessoas (altura, nome_pessoa) VALUES (1.60, 'Daniela Moura');
INSERT INTO pessoas (altura, nome_pessoa) VALUES (1.90, 'Eduardo Lima');

-- Inserindo países
INSERT INTO paises (nome_pais) VALUES ('Brasil');
INSERT INTO paises (nome_pais) VALUES ('Canadá');
INSERT INTO paises (nome_pais) VALUES ('Japão');
INSERT INTO paises (nome_pais) VALUES ('Alemanha');
INSERT INTO paises (nome_pais) VALUES ('Austrália');

-- Inserindo passaportes (associando pessoas e países)
INSERT INTO passaportes (cod_passaporte, pessoa_id, pais_id) VALUES ('BR123456', 1, 1);
INSERT INTO passaportes (cod_passaporte, pessoa_id, pais_id) VALUES ('CA654321', 2, 2);
INSERT INTO passaportes (cod_passaporte, pessoa_id, pais_id) VALUES ('JP112233', 3, 3);
INSERT INTO passaportes (cod_passaporte, pessoa_id, pais_id) VALUES ('DE445566', 4, 4);
INSERT INTO passaportes (cod_passaporte, pessoa_id, pais_id) VALUES ('AU778899', 5, 5);

-- Inserindo pets
INSERT INTO pets (nome_pet, pedigre, pessoa_id) VALUES ('Rex', 'Labrador', 1);
INSERT INTO pets (nome_pet, pedigre, pessoa_id) VALUES ('Mimi', 'Persa', 1);
INSERT INTO pets (nome_pet, pedigre, pessoa_id) VALUES ('Bob', NULL, 2);
INSERT INTO pets (nome_pet, pedigre, pessoa_id) VALUES ('Thor', 'Poodle', 3);
INSERT INTO pets (nome_pet, pedigre, pessoa_id) VALUES ('Luna', 'Golden Retriever', 4);
INSERT INTO pets (nome_pet, pedigre, pessoa_id) VALUES ('Nina', NULL, 5);
INSERT INTO pets (nome_pet, pedigre, pessoa_id) VALUES ('Bidu', 'Beagle', 2);