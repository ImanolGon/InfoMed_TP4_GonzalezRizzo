SELECT pacientes.nombre AS pacientes, COUNT(id_receta) AS cantidad_recetas
FROM recetas
LEFT JOIN pacientes ON pacientes.id_paciente = recetas.id_paciente
GROUP BY pacientes.nombre
ORDER BY cantidad_recetas DESC;
