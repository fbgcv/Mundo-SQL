-- 01. Quais pessoas têm passaporte para qual país?
SELECT p.nome_pessoa, ps.codigo, pa.nome_pais
FROM pessoas p
INNER JOIN passportes ps ON p.id_pessoa = ps.id_pessoa
INNER JOIN paises pa ON ps.id_pais = pa.id_pais;

-- 02. Quais pessoas possuem um pet ?
SELECT DISTINCT p.nome_pessoa
FROM pessoas p
INNER JOIN pets pt ON p.id_pessoa = pt.id_pessoa;

-- 03. Liste todas as pessoas, mesmo que não tenham pet.
SELECT p.nome_pessoa, pt.nome_pet
FROM pessoas p
LEFT JOIN pets pt ON p.id_pessoa = pt.id_pessoa

-- 04. Quais pessoas não possuem nem um pet?
SELECT p.nome_pessoa
FROM pessoas p
LEFT JOIN pets pt ON p.id_pessoa = pt.id_pessoa
WHERE pt.id_pessoa IS NULL;

-- 05. Quais pets não têm pedigree informado?
SELECT nome_pet FROM pets WHERE pedigree IS NULL;

-- 06. Quais são os nomes dos pets e os países de origem dos donos?
SELECT pt.nome_pet, pa.nome_pais
FROM pets pt
INNER JOIN pessoas p ON pt.id_pessoa = p.id_pessoa
INNER JOIN passaportes ps ON p.id_pessoa = ps.id_pessoa
INNER JOIN paises pa ON ps.id_pais = pa.id_pais;

-- 7. Quais países ainda não possuem nenhum passaporte associado? (LEFT JOIN com IS NULL)
SELECT pa.nome_pais
FROM paises pa
LEFT JOIN passaportes ps ON pa.id_pais = ps.id_pais
WHERE ps.id_passaporte IS NULL;

-- 8. Quantos pets cada pessoa tem? (GROUP BY)
SELECT p.nome_pessoa, COUNT(pt.id_pet) AS quantidade_de_pets
FROM pessoas p
LEFT JOIN pets pt ON p.id_pessoa = pt.id_pessoa
GROUP BY p.nome_pessoa
ORDER BY quantidade_de_pets DESC;

-- 9. Quais pessoas têm passaporte mas não têm nenhum pet?
SELECT p.nome_pessoa
FROM pessoas p
INNER JOIN passaportes ps ON p.id_pessoa = ps.id_pessoa
LEFT JOIN pets pt ON p.id_pessoa = pt.id_pessoa
WHERE pt.id_pet IS NULL;

-- 10. Liste todos os pets e os nomes das pessoas a quem pertencem, mesmo que o dono não tenha passaporte.
SELECT pt.nome_pet, p.nome_pessoa
FROM pets pt
INNER JOIN pessoas p ON pt.id_pessoa = p.id_pessoa;