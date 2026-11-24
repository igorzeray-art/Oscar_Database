-- 6.1
SELECT DISTINCT ano_cerimonia, nome_filme, categoria
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%' 
  AND vencedor = true
ORDER BY ano_cerimonia ASC;

-- 6.2
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%';

-- 6.3
SELECT DISTINCT categoria
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%';

-- 6.4
SELECT DISTINCT ano_cerimonia, cerimonia
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash';

-- 6.5
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash';

-- 6.6
SELECT nome_filme, ano_cerimonia, categoria, vencedor
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash' 
  AND categoria IN ('BEST PICTURE', 'OUTSTANDING PICTURE')
  AND vencedor = true;

-- 6.7
SELECT * 
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Central do Brasil%' 
   OR nome_filme LIKE '%Central Station%';

-- 6.8
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Central do Brasil%' 
   OR nome_filme LIKE '%Central Station%';