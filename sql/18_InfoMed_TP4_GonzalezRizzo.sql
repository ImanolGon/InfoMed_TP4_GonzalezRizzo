SELECT medicos.nombre AS medico, COUNT(DISTINCT id_paciente) AS cantidad_pacientes FROM consultas
JOIN medicos ON medicos.id_medico = consultas.id_medico
GROUP BY medicos.nombre ORDER BY cantidad_pacientes DESC;
