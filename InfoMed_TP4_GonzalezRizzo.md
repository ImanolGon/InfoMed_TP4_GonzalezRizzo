# Trabajo Práctico N.º 4 — Informática Médica (ITBA)
**Tema:** BBDD, SQL y Manejo de Versiones  
**Integrantes:** Imanol González — Marika Rizzo  
**Año:** 2025  

---

## 1. Base de Datos

### 1.1 ¿Qué tipo de base de datos es? Clasificarla según estructura y función.

La base de datos, según su estructura, es de tipo **relacional** porque los datos se organizan en tablas con relaciones definidas entre ellas.  
Según su función, es de tipo **transaccional** porque permite realizar operaciones de modificación, inserción y eliminación de datos de forma continua y segura.

---

### 1.2 Planteando el Modelo conceptual, armar el diagrama entidad-relación de la base de datos dada. 

**Modelo conceptual (Notación de Chen)**

- La especialidad de los médicos se modela como entidad independiente para eliminar la redundancia e inconsistencia, porque la misma especialidad puede estar asociada a más médicos.

📷 *Insertar imagen del diagrama entidad-relación (DER-Chen)*  
`![Diagrama Chen](img/DER_Chen.png)`

---

### 1.3 Mapear el Modelo conceptual planteado en el punto 2 al Modelo Relacional de la base de datos.

**Modelo relacional (Notación Crow’s Foot)**

Mapeo del modelo conceptual planteado al modelo relacional de la base de datos.  

> “Supongamos que todo médico debe tener una especialidad para poder realizar una consulta.”

📷 *Insertar imagen del diagrama relacional (Crow’s Foot)*  
`![Modelo Relacional](img/CrowsFoot.png)`

---

### 1.4 Normalización

**→Primera forma normal (1FN):**  
La base de datos cumple la primera forma normal, porque en las tablas no existen grupos repetidos ni atributos multivaluadoso sea, no hay arreglos ni listas dentro de las celdas.
Cada campo contiene un solo valor atómico.

**→Segunda forma normal (2FN):**  
La base de datos no cumple completamente la segunda forma normal, porque en varias tablas aparecen tanto el identificador (ID) como el nombre descriptivo de una entidad, (ej: ID médico, nome médico).
Para cumplir la 2FN, sería necesario eliminar los atributos redundantes.

**→Tercera forma normal (3FN):**  
La tercera forma normal no se cumple todavía, ya que depende de que la base cumpla la 2FN, ya que la 1FN se cumplió.
Sin embargo, una vez eliminadas las dependencias parciales, la 3FN podría cumplirse, porque en este modelo no existen dependencias transitivas, o sea, ningún atributo depende de otro atributo que no sea clave.

---

## 2. SQL

> Cada query se presenta en formato de código y debajo una imagen con el resultado obtenido.

---

### **1.** Índice por ciudad (optimización de consultas con GROUP BY)
```sql
CREATE INDEX idx_pacientes_ciudad ON Pacientes(ciudad);
