SELECT pacientes.nombre AS paciente, fecha AS fecha_ultima_consulta, diagnostico FROM consultas 
JOIN pacientes ON pacientes.id_paciente = consultas.id_paciente
WHERE fecha = (SELECT MAX(fecha) FROM consultas WHERE consultas.id_paciente = pacientes.id_paciente)
ORDER BY pacientes.nombre;
