SELECT pacientes.nombre AS pacientes, fecha AS fecha_consulta, diagnostico FROM consultas JOIN pacientes ON pacientes.id_paciente = consultas.id_paciente WHERE fecha BETWEEN '2024-08-01' AND '2024-08-31';

