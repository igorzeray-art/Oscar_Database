-- 4.1
-- R: Janet Gaynor, em 1929 (filmes de 1927/1928), por "7th Heaven", "Street Angel" e "Sunrise: A Song of Two Humans".
SELECT nome_indicado, ano_filmagem, ano_cerimonia, nome_filme 
FROM indicados_ao_oscar
WHERE categoria = 'ACTRESS' 
  AND vencedor = true
ORDER BY ano_cerimonia ASC
LIMIT 1;

-- 4.2
-- R: Emil Jannings, em 1929 (filmes de 1927/1928), por "The Last Command" e "The Way of All Flesh".
SELECT nome_indicado, ano_filmagem, ano_cerimonia, nome_filme 
FROM indicados_ao_oscar
WHERE categoria = 'ACTOR' 
  AND vencedor = true
ORDER BY ano_cerimonia ASC
LIMIT 1;

-- 4.3
SELECT COUNT(*) AS total_vencedores 
FROM indicados_ao_oscar
WHERE vencedor = true;

-- 4.4
SELECT ano_cerimonia, categoria, nome_filme 
FROM indicados_ao_oscar
WHERE categoria IN ('OUTSTANDING PICTURE', 'BEST PICTURE') 
  AND vencedor = true
ORDER BY ano_cerimonia ASC;

-- 4.5
SELECT COUNT(DISTINCT nome_filme) AS total_filmes_vencedores 
FROM indicados_ao_oscar
WHERE vencedor = true;