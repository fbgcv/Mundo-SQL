-- 01. Atualize o nome da pessoa com id 3 para "Carlos E."
UPDATE pessoas SET nome_pessoa = "Carlos E." WHERE id_pessoa = 3;

-- 02. Altere a altura de todas as pessoas com mais de 1.80 para 1.79.
UPDATE pessoas SET altura = 1.79 WHERE altura > 1.80;

-- 03. Mude o nome do país com id 2 para "Candaá (América do norte)".
UPDATE paises SET nome_pais = 'Canadá (América do Norte)' WHERE id_pais = 2;

-- 04. Adicione o sobrenome "dos Santos" às pessoas chamadas "Ana Clara" e "Daniela Moura".
UPDATE pessoas SET nome_pessoa = CONCAT(nome_pessoa, ' dos Santos') WHERE nome_pessoa IN ('Ana Clara', 'Daniela Moura');

-- 05. Atualize o pedigree dos pets que estão com valor NULL para "Sem pedigree".
UPDATE pets SET pedgree = 'Sem pedigree' WHERE pedigree IS NULL;

-- 06. Mude todos os nomes de pets que começam com a letra 'B' para a versão em maiúsculas.
UPDATE pets SET nome_pet = UPPER(nome_pet) WHERE nome_pet LIKE 'B%';

-- 07. Altere o código do passaporte da pessoa com id 1 para "BR000001".
UPDATE passaportes SET codigo = 'BR000001' WHERE id_pessoa = 1;

-- 08. Aumente a altura de todas as pessoas com menos de 1.70 em 5 cm.
UPDATE pessoas SET altura = altura + 0.05 WHERE altura < 1.70;

-- 09. Troque o país do passaporte da pessoa com id 4 para o país de id 5.
UPDATE passaportes SET id_pais = 5 WHERE id_pessoa = 4;

-- 10. Atualize o nome do pet de id 7 para "Biduzinho" e seu pedigree para "Baegle Premium".
UPDATE pets SET nome_pet = 'Biduzinho', pedigree = 'Baegle Premium' WHERE id_pet = 7;