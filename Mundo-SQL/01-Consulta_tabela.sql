-- 01. Quais são todas as pessoas cadastradas?
SELECT * FROM pessoas;

-- 02. Quais pessoas têm altura maior que 1.70m?
SELECT nome_pessoa, altura FROM pessoas WHERE altura > 1.70;

-- 03. Quem tem altura entre 1.60m e 1.80m?
SELECT nome_pessoa, altura FROM pessoas WHERE altura BETWEEN 1.60 AND 1.80;

-- 04 Existe alguém com nome começando com 'C'?
SELECT nome_pessoa FROM PESSOAS WHERE nome_pessoa LIKE 'C%';

-- 05. Quantas pessoas estão cadastradas ?
SELECT COUNT(*) AS total_de_pessoas FROM pessoas;

-- 06. Qual é a altura média das pessoas?
SELECT AVG(altura) AS altura_media FROM pessoas;

-- 07. Qual é a menor altura cadastrada?
SELECT MIN(altura) AS menor_altura FROM pessoas;

-- 08. Qual é a maior altura cadastrada?
SELECT MAX(altura) AS maior_altura FROM pessoas;

-- 09. Quantas pessoas têm nome com mais de 10 letras?
SELECT COUNT(*) AS total_pessoas_nome_longo FROM pessoas WHERE LENGTH(nome_pessoa) > 10;

-- 10. Liste os nomes das pessoas ordenados por altura decrescente.
SELECT nome_pessoa, altura FROM pessoas ORDER BY altura DESC;