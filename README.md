# Taller de Bases de Datos – Pokémon

## Proyecto
**Sistema de Base de Datos Pokémon**

**Asignatura:** Taller de Base de Datos  
**Profesor:** (omitido)  
**Fecha de creación:** 29/06/2023  
**Última actualización:** 04/07/2023  
**Fecha de entrega:** 06/07/2023

## Descripción
Crear una base de datos que concentre la información relevante sobre las ciudades que recorre un entrenador Pokémon, con el fin de facilitar la planificación de rutas, la gestión de recursos y el análisis de gimnasios y centros Pokémon.

## Requisitos funcionales

### Ciudades
- Debe incluirse un mínimo de 20 ciudades.
- Cada ciudad debe tener:
  - Nombre.
  - Identificador único.
  - Relación con su gimnasio, centro Pokémon y tienda.

### Centros Pokémon
- Registrar el nombre de la enfermera responsable en cada centro.
- Mantener un listado (sin repeticiones por nombre) de hasta los últimos 151 Pokémon atendidos. Para cada Pokémon se requiere:
  - Nombre.
  - Tipo primario y tipo secundario.
  - Estadísticas: HP, Ataque, Defensa y tipo de ataque.
  - Número en la Pokédex (posición).

### Tiendas
- Cada tienda debe almacenar los objetos que ofrece, con:
  - Nombre del objeto.
  - Tipo (Pokéball o soporte).
  - Stock disponible.
  - Precio.
- La tienda debe incluir como mínimo 30 objetos distintos.

**Tipos de Pokéballs obligatorios (ejemplos):**
- Pokéball
- Superball
- Ultraball
- Masterball

**Tipos de objetos de soporte (ejemplos):**
- Poción
- Poción Máxima
- Revivir
- Revivir Máximo
- Caramelos, entre otros

### Gimnasios
- Cada ciudad posee un gimnasio asociado.
- Para cada gimnasio registrar:
  - Nombre del líder.
  - Especialidad (tipo de Pokémon que usa el gimnasio).
  - Nombre de la medalla que entrega al vencer.
- Debe haber al menos 20 líderes de gimnasio distintos.

## Objetivo del proyecto
Proveer una herramienta robusta que permita:
- Consultar y comparar características de las ciudades.
- Conocer la composición y capacidad de centros Pokémon.
- Administrar inventarios y precios en tiendas.
- Identificar líderes de gimnasio, su especialidad y las medallas asociadas.

La base de datos debe facilitar la toma de decisiones del entrenador al planificar rutas, preparar equipos y administrar recursos.

## Entregables sugeridos
- Esquema del modelo entidad-relación (ER).
- Script SQL para creación de tablas y restricciones (PK, FK, índices).
- Scripts de carga con datos de ejemplo (ciudades, gimnasios, centros, tiendas, Pokémon).
- Consultas SQL de ejemplo para:
  - Obtener todas las tiendas de una ciudad y su stock.
  - Listar líderes de gimnasio por tipo.
  - Mostrar los últimos 151 Pokémon atendidos en un centro.
- Documentación breve que explique cómo importar los datos y ejecutar las consultas.

## Criterios de evaluación
- Cumplimiento de los requisitos mínimos (ciudades, gimnasios, tiendas y centros).
- Correcta normalización y diseño del esquema.
- Integridad referencial implementada (claves primarias y foráneas).
- Claridad y calidad de la documentación y de los scripts de ejemplo.
- 
