SELECT medicamentos.nombre AS medicamento, 
COUNT(id_receta) AS cantidad_receta, medicos.nombre AS medico, pacientes.nombre AS paciente FROM recetas
JOIN medicamentos ON medicamentos.id_medicamento = recetas.id_medicamento
JOIN medicos ON medicos.id_medico = recetas.id_medico
JOIN pacientes ON pacientes.id_paciente = recetas.id_paciente
GROUP BY medicamentos.nombre, medicos.nombre, pacientes.nombre 
ORDER BY cantidad_receta DESC;
