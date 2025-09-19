-- 01 ====
UPDATE pessoas SET name="Letícia" WHERE id_pessoa = 3;

-- 02 ====
UPDATE pessoas SET altura = 1.79 WHERE altura > 1.80;

-- 03 ====
UPDATE paises SET name = "Canadá - (América do norte)" WHERE nome_pais = 2;

-- 04 ====
SELECT CONCAT('Ana Clara', 'dos Santos');
SELECT CONCAT('Daniela Moura', 'dos Santos');
-- 05 ====
UPDATE pets
SET pedigre = 'Sem pedigre'
WHERE pedigre IS NULL;
-- 06 ====
UPDATE pets
SET nome_pet = LIKE 'b%' SET ;