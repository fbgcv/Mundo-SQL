-- 01 ====
SELECT * FROM pessoas;
SELECT nome, altura FROM pessoas;
WHERE altura > 1.7;
-- 02 ====
SELECT * FROM pessoas;
SELECT altura FROM pessoas;
WHERE altura > 1.6 AND altura < 1.8;
-- 03 ====
SELECT * FROM pessoas;
SELECT nome_pessoa FROM pessoa;
WHERE nome_pessoa LIKE 'c%';
-- 04 ====
SELECT COUNT(nome_pessoa);
FROM pessoas;
-- 05 ====
SELECT AVG(altura);
FROM pessoas;
-- 06 ====
SELECT MIN(altura);
FROM pessoas;
-- 07 ====
SELECT MAX(altura);
FROM pessoas;
-- 08 ====
SELECT LEN(nome_pessoa)
WHERE nome_pessoa > 10;
-- 09 ====
SELECT pessoas;
FROM altura;
ORDER BY pessoas DESC;
-- 10 ====
