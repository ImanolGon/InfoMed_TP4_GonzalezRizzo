SELECT nombre AS medicamento, COUNT(recetas.id_receta) AS cantidad_recetas FROM medicamentos
JOIN recetas ON recetas.id_medicamento = medicamentos.id_medicamento
GROUP BY nombre ORDER BY cantidad_recetas DESC
LIMIT 1
