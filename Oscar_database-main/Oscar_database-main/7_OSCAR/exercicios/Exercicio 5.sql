-- 5.1
SELECT nome_indicado, COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE categoria IN ('ACTOR', 'ACTRESS', 'ACTOR IN A LEADING ROLE', 'ACTRESS IN A LEADING ROLE', 'ACTOR IN A SUPPORTING ROLE', 'ACTRESS IN A SUPPORTING ROLE')
GROUP BY nome_indicado
HAVING COUNT(*) > 1
ORDER BY total_indicacoes DESC;

-- 5.2
-- R: Meryl Streep (21 indicações)
SELECT nome_indicado, COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE categoria IN ('ACTOR', 'ACTRESS', 'ACTOR IN A LEADING ROLE', 'ACTRESS IN A LEADING ROLE', 'ACTOR IN A SUPPORTING ROLE', 'ACTRESS IN A SUPPORTING ROLE')
GROUP BY nome_indicado
ORDER BY total_indicacoes DESC
LIMIT 1;

-- 5.3
SELECT nome_indicado, COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE categoria IN ('ACTOR', 'ACTRESS', 'ACTOR IN A LEADING ROLE', 'ACTRESS IN A LEADING ROLE', 'ACTOR IN A SUPPORTING ROLE', 'ACTRESS IN A SUPPORTING ROLE')
GROUP BY nome_indicado
HAVING COUNT(*) > 3 
   AND SUM(CASE WHEN vencedor = true THEN 1 ELSE 0 END) = 0
ORDER BY total_indicacoes DESC;

-- 5.4
SELECT nome_indicado, COUNT(DISTINCT categoria) AS total_categorias
FROM indicados_ao_oscar
GROUP BY nome_indicado
HAVING COUNT(DISTINCT categoria) > 1
ORDER BY total_categorias DESC;

-- 5.5
SELECT COUNT(*) AS indicados_apenas_uma_vez
FROM (
    SELECT nome_indicado
    FROM indicados_ao_oscar
    GROUP BY nome_indicado
    HAVING COUNT(*) = 1
) AS subconsulta;

-- 5.6
SELECT ano_cerimonia, COUNT(*) AS total_indicados
FROM indicados_ao_oscar
GROUP BY ano_cerimonia
ORDER BY total_indicacoes DESC
LIMIT 1;