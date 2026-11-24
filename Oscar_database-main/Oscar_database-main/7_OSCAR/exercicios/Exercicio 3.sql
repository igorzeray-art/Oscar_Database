-- 3.1
SELECT COUNT(*) AS total_indicacoes 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Natalie Portman%';

-- 3.2
SELECT COUNT(*) AS total_vitorias 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Natalie Portman%' 
  AND vencedor = true;

-- 3.3
SELECT ano_filmagem, ano_cerimonia, nome_filme 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Natalie Portman%';

-- 3.4
SELECT ano_cerimonia, categoria, nome_filme, vencedor 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Natalie Portman%';

-- 3.5
SELECT COUNT(*) AS total_indicacoes 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Viola Davis%';

-- 3.6
SELECT COUNT(*) AS total_vitorias 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Viola Davis%' 
  AND vencedor = true;

-- 3.7
SELECT DISTINCT nome_filme 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Viola Davis%';

-- 3.8
SELECT COUNT(*) AS total_vitorias 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Amy Adams%' 
  AND vencedor = true;

-- 3.9
SELECT COUNT(*) AS indicacoes_sem_vencer 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Amy Adams%' 
  AND vencedor = false;

-- 3.10
SELECT COUNT(*) AS total_vitorias 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Denzel Washington%' 
  AND vencedor = true;

-- 3.11
SELECT COUNT(*) AS total_indicacoes 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Denzel Washington%';

-- 3.12
SELECT ano_cerimonia, categoria, nome_filme 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE '%Denzel Washington%' 
  AND vencedor = true;