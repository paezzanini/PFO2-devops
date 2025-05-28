# Gestión de Tareas – Dockerizado

Este repositorio contiene una versión **dockerizada** del sistema de gestión de tareas desarrollado con **Node.js**, **Express** y **MongoDB**.

## Cambios realizados

- Se agregó un archivo `Dockerfile` para crear una imagen de la aplicación.
- Se creó un archivo `docker-compose.yml` para orquestar los servicios: la aplicación (`app`) y una base de datos MongoDB (`mongo`).
- Se actualizó el archivo `.env` para usar una URI de conexión a MongoDB local:
  ```env
  MONGODB_URI=mongodb://mongo:27017/tareasDB
  ```
- Se agregó un archivo `.dockerignore` para evitar copiar archivos innecesarios como `node_modules`, `.env`, etc.
- Se eliminó la carpeta `node_modules` antes de construir la imagen para evitar errores de compatibilidad.

## Servicios

- **app**: Contiene el backend Node.js (Express).
- **mongo**: Contenedor con base de datos MongoDB 6.

## Cómo levantar el proyecto con Docker

### 1. Clonar el repositorio

```bash
git clone https://github.com/paezzanini/PFO2-devops.git
cd PFO2-devops
```

### 2. Ejecutar con Docker Compose

```bash
docker-compose up --build -d
```

> Esto compilará la imagen, levantará los contenedores y conectará ambos servicios.

### 3. Acceder a la API

Una vez corriendo, podés acceder a la API desde [http://localhost:3000](http://localhost:3000)

## Archivos relevantes

- `Dockerfile`: Define el entorno de ejecución de la app.
- `docker-compose.yml`: Orquesta servicios `app` y `mongo`.
- `.env`: Configura la conexión a MongoDB.

## Dependencias principales

- Node.js
- Express
- Mongoose
- MongoDB (contenedor oficial)

## Notas

- Se debe tener Docker y Docker Compose instalados previamente.
- La base de datos se almacena en un volumen persistente llamado `mongo-data`.
- El contenedor escucha por el puerto `3000` en el host.