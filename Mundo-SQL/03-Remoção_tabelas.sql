-- 01. Remova o pet chamado "Bob".
DELETE FROM pets WHERE nome_pet = 'Bob';

-- 02. Delete todas as pessoas com altura inferior a 1.65.
DELETE FROM pessoas WHERE altura < 1.65;

-- 03. Exclua os países cujo o nome comece com a letra "A".
DELETE FROM paises WHERE nome_pais LIKE 'A%';

-- 04. Apague os pets cujo pedigree seja "Sem pedigree".
DELETE FROM pets WHERE pedigree = 'Sem pedigree';

-- 05. Remova os passaportes com código que comece por "CA".
DELETE FROM passaportes WHERE codigo LIKE 'CA%';

-- 06. Delete todos os pets que pertencem à pessoa de id 1.
DELETE FROM pets WHERE id_pessoa = 1;

-- 07. Apague os passaportes associados a pessoas quem tẽm altura acima de 1.80.
DELETE FROM passaportes WHERE id_pessoa IN (SELECT id_pessoa) IN (SELECT id_pessoa FROM WHERE altura > 1.80);

-- 08. Remova a pessoa chamada "Eduardo Lima".
DELETE FROM pessoas WHERE nome_pessoa = 'Eduardo Lima';

-- 09. Delete todos os registros de pets cujo nome termina com a letra "a".
DELETE FROM pets WHERE nome_pet LIKE '%a';

-- 10. Remova os pets cujo pessoa_id seja NULL.
DELETE FROM pets WHERE id_pessoa IS NULL;