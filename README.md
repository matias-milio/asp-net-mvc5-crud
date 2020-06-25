# SIMPLE STORE CRUD IN ASP.NET MVC 5
As the title says, the WebApp does some basic CRUD operations over one master table and it's relations.

It uses features like:
* N-Layer Arquitecture
* Entity Framework
* Repository Pattern
*Unit Of Work Classes
*AutoMapper with custom profiles
*Unity Dependency Injection
*Options Pattern for specific configurations
*Basic logging with Log4net
*Cached query responses
*Encripted Connection String in Web.Config file

The creational script (db-creation-script.sql) for the DB includes some data in the id-description tables (sorry for the spanish product brand names :D).
Don't forget to update your connection string in the web.config file.

The styles of the views are a work in progress.

Next version will be using HTML Pages with AJAX calls to the controllers methods instead of views with razor.

-------------------------------------------------------------------------------------------------------------------------------------------

# CRUD DE TIENDA EN ASP.NET MVC 5
Como dice el titulo, es una WebApp que hace algunas operaciones de CRUD sobre una tabla maestra y sus relaciones.

Hace uso de :
*Arquitectura de N-Capas
*Entity Framework
*Patron repository
*Clases Unit Of Work
*AutoMapper con profiles personalizados
*Inyeccion de dependencias con Unity
*Patron options para acceder a secciones personalizadas del web.config
*Logueo basico con log4net
*Cache para las respuesta de las consultas a la base de datos.
*Cadena de conexion encriptada en el web.config

El script creacional (db-creation-script.sql) de la base de datos incluye algunos datos para las tablas clave-valor.
No olvides actualizar con tu cadena de conexion el web.config.

Los estilos de las vistas estan pendientes.

La proxima version sera el mismo crud pero con paginas HTML y llamados AJAX con jQuery en lugar de vistas con razor.
