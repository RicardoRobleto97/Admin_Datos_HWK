--Mostrar poderes
SELECT sh.superhero_name, sp.power_name FROM superhero.hero_power hp INNER JOIN superhero.superhero sh ON sh.id = hp.hero_id INNER JOIN superhero.superpower sp ON sp.id = hp.power_id;

--  mostrar cuantos hombres y mujeres(gender) hay

SELECT p.publisher_name, g.gender, count(*) FROM superhero.superhero sh INNER JOIN superhero.publisher p ON p.id = sh.publisher_id INNER JOIN superhero.gender g ON g.id = sh.gender_id GROUP BY p.publisher_name, g.gender;

-- Mostrar colores
SELECT sh.superhero_name, ec.colour as eye_colour, hc.colour as hair_coulour, sc.colour as skin_colour FROM superhero.superhero sh INNER JOIN superhero.colour ec on ec.id = sh.eye_colour_id INNER JOIN superhero.colour hc ON hc.id = sh.hair_colour_id INNER JOIN superhero.colour sc ON sc.id = sh.skin_colour_id;

-- Listar los atributos 
SELECT sh.superhero_name, a.attribute_name, ha.attribute_value FROM superhero.hero_attribute ha INNER JOIN superhero.superhero sh on sh.id = ha.hero_id INNER JOIN superhero.attribute a on a.id = ha.attribute_id;

-- Mostrar stats

SELECT sh.superhero_name, a.alignment FROM superhero.superhero sh INNER JOIN superhero.alignment a on a.id = sh.alignment_id;
