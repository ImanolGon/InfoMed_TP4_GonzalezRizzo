SELECT ciudad, sexobiologico.descripcion AS sexo, COUNT(*) AS cantidad_pacientes
FROM pacientes
JOIN sexobiologico ON pacientes.id_sexo = sexobiologico.id_sexo
GROUP BY ciudad, sexobiologico.descripcion
ORDER BY ciudad, sexo;

