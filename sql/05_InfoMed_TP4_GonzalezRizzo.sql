UPDATE pacientes
SET ciudad='Buenos Aires'
WHERE TRIM(LOWER(ciudad)) ILIKE '%buenos%'
   OR TRIM(LOWER(ciudad)) ILIKE '%aire%';
