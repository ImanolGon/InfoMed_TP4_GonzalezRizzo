SELECT medicamentos.nombre AS medicamento,
COUNT(recetas.id_receta) AS cantidad_prescripciones
FROM recetas
JOIN medicamentos ON recetas.id_medicamento = medicamentos.id_medicamento
WHERE recetas.id_medico = 2
GROUP BY medicamentos.nombre
HAVING COUNT(recetas.id_receta) > 1
ORDER BY cantidad_prescripciones DESC;
