SELECT medicos.nombre AS medico, pacientes.nombre AS paciente, COUNT(id_consulta) AS cantidad_consultas
FROM consultas 
JOIN medicos ON medicos.id_medico = consultas.id_medico
JOIN pacientes ON pacientes.id_paciente = consultas.id_paciente
GROUP BY medicos.nombre, pacientes.nombre ORDER BY medicos.nombre
