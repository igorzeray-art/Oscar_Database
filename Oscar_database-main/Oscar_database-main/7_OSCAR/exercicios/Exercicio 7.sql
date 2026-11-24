-- 7.1
-- Passo 1:
UPDATE indicados_ao_oscar
SET vencedor = CASE 
    WHEN vencedor = 'true' THEN '1'
    WHEN vencedor = 'false' THEN '0'
    ELSE vencedor
END;

-- Passo 2:
ALTER TABLE indicados_ao_oscar 
MODIFY COLUMN vencedor BOOLEAN;

-- 7.2
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES 
(2016, 2017, 89, 'DIRECTING', 'Denis Villeneuve', 'Arrival', true),
(2014, 2015, 87, 'ACTOR IN A LEADING ROLE', 'Jake Gyllenhaal', 'Nightcrawler', false),
(2019, 2020, 92, 'ACTOR IN A LEADING ROLE', 'Adam Sandler', 'Uncut Gems', false);

-- 7.3
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES 
(2019, 2020, 92, 'BEST INTERNATIONAL FEATURE FILM', 'South Korea', 'Parasite', true),
(2020, 2021, 93, 'BEST INTERNATIONAL FEATURE FILM', 'Denmark', 'Another Round', true),
(2021, 2022, 94, 'BEST INTERNATIONAL FEATURE FILM', 'Japan', 'Drive My Car', true),
(2022, 2023, 95, 'BEST INTERNATIONAL FEATURE FILM', 'Germany', 'All Quiet on the Western Front', true),
(2023, 2024, 96, 'BEST INTERNATIONAL FEATURE FILM', 'United Kingdom', 'The Zone of Interest', true);

-- 7.4
UPDATE indicados_ao_oscar
SET nome_filme = TRIM(REPLACE(REPLACE(REPLACE(nome_filme, '  ', ' '), '"', ''), '  ', ' '))
WHERE nome_filme IS NOT NULL;

-- 7.5
DELETE FROM indicados_ao_oscar
WHERE nome_filme IS NULL;