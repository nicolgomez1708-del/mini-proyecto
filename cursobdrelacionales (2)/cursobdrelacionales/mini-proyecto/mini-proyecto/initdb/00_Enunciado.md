# Mini Proyecto - Sistema de Gestión de Biblioteca

## Descripción

Este proyecto consiste en el diseño e implementación de una base de datos relacional para la gestión de una biblioteca. El sistema permite administrar información relacionada con usuarios, autores, categorías, libros, préstamos y sanciones.

La solución fue desarrollada utilizando PostgreSQL como sistema de gestión de bases de datos y ejecutada dentro de contenedores Docker para facilitar su despliegue y portabilidad.

## Objetivos

* Diseñar una base de datos relacional aplicando buenas prácticas de modelado.
* Implementar restricciones de integridad mediante claves primarias, claves foráneas y validaciones.
* Gestionar la información de usuarios, libros y préstamos.
* Realizar consultas SQL que permitan obtener información relevante para la administración de la biblioteca.
* Utilizar herramientas modernas para el desarrollo y administración de bases de datos.

---

## Herramientas Utilizadas

### Visual Studio Code (VS Code)

Editor de código utilizado para la creación y edición de los archivos SQL y de configuración del proyecto. Permitió organizar los scripts de creación de tablas, inserción de datos y consultas de validación.

### Docker

Plataforma utilizada para ejecutar PostgreSQL y pgAdmin mediante contenedores. Docker permitió crear un entorno aislado, reproducible y fácil de desplegar sin necesidad de instalar directamente los servicios en el sistema operativo.

### PostgreSQL

Sistema de gestión de bases de datos relacional utilizado para almacenar y administrar toda la información del proyecto. Se implementaron tablas, restricciones, índices y consultas SQL.

### pgAdmin

Herramienta gráfica utilizada para la administración y visualización de la base de datos PostgreSQL. Permitió ejecutar consultas, verificar registros y analizar la estructura de las tablas.

## Estructura de la Base de Datos

El sistema está compuesto por las siguientes tablas:

* **usuarios:** almacena la información de los usuarios registrados.
* **autores:** contiene los autores de los libros.
* **categorias:** clasifica los libros según su temática.
* **libros:** almacena la información bibliográfica disponible.
* **prestamos:** registra los préstamos realizados por los usuarios.
* **sanciones:** almacena las sanciones aplicadas a los usuarios.

## Funcionalidades Implementadas

1. Registro de usuarios.
2. Gestión de autores y categorías.
3. Registro de libros disponibles.
4. Control de préstamos y devoluciones.
5. Gestión de sanciones a usuarios.
6. Consultas para obtener información de préstamos, usuarios y libros.
7. Creación de índices para optimizar búsquedas frecuentes.

## Consultas Realizadas

Se implementaron consultas para:

* Listar libros junto con su autor y categoría.
* Mostrar préstamos activos.
* Consultar préstamos de un usuario específico.
* Identificar libros sin préstamos activos.
* Contar préstamos realizados por usuario.
* Consultar préstamos vencidos.
* Mostrar fechas esperadas de devolución.
* Ordenar usuarios según la cantidad de préstamos.
* Consultar sanciones registradas.
