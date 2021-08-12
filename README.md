# Vibe

Simplemente es una aplicación para la administración de proyectos.

## Docker

Este proyecto se inició con docker con el siguiente comando:
`docker-compose run --no-deps --name vibeRailsApi web rails new . --api --force --database=postgresql`

No se necesario correr el comando anterior.

Una vez instalado docker simplemente es necesario ejecutar los siguientes comandos:

### Construir contenedores
`docker-compose build`

### Levantar servicios
`docker-compose up`

Ó alternativamente.

`docker-compose up --build`

### Apagar los servicios
`docker-compose down`

### Ejecutar comandos de rails

Ejemplo: `docker-comopse run web rails db:create`