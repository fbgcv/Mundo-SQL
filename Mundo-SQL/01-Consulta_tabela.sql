SELECT * FROM pessoas;
SELECT nome, altura FROM pessoas;
WHERE altura > 1.7;
====
SELECT * FROM pessoas;
SELECT altura FROM pessoas;
WHERE altura > 1.6 AND altura < 1.8;
====
SELECT * FROM pessoas;
SELECT nome_pessoa FROM pessoa;
WHERE nome_pessoa LIKE 'c%';
====
SELECT COUNT(nome_pessoa);
FROM pessoas;
====
SELECT AVG(altura);
FROM pessoas;
====
SELECT MIN(altura);
FROM pessoas;
====
SELECT MAX(altura);
FROM pessoas;
====
SELECT LEN(nome_pessoa)
WHERE nome_pessoa > 10;
====
SELECT pessoas;
FROM altura;
ORDER BY pessoas DESC;
====
