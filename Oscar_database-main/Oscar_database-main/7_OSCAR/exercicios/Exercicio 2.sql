-- 2. Explorando Categorias

-- 2.1 SELECT categoria, COUNT(categoria) AS "Contagem" FROM indicados_ao_oscar GROUP BY categoria ORDER BY Contagem DESC;
-- 2.2 SELECT categoria, COUNT(categoria) AS "Contagem" FROM indicados_ao_oscar GROUP BY categoria ORDER BY Contagem DESC LIMIT 1;
-- 2.3 SELECT categoria, COUNT(categoria) AS "Contagem" FROM indicados_ao_oscar GROUP BY categoria ORDER BY Contagem LIMIT 1;
-- 2.4 SELECT MAX(ano_cerimonia) AS ultima_cerimonia, MAX(edicao_cerimonia) AS ultima_edicao FROM indicados_ao_oscar WHERE categoria = 'ACTRESS';
-- 2.5 SELECT DISTINCT categoria FROM indicados_ao_oscar WHERE ano_cerimonia >= (SELECT MAX(no_cerimonia) - 4 FROM indicados_ao_oscar), SELECT DISTINCT categoria FROM indicados_ao_oscar  WHERE ano_cerimonia = 1928 AND categoria NOT IN (SELECT DISTINCT categoria FROM indicads_ao_oscar WHERE ano_cerimonia >= (SELECT MAX(ano_cerimonia) - 4 FROM indicados_ao_oscar))
