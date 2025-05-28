FROM node:18

WORKDIR /app

# Copiar package.json y package-lock.json primero
COPY package*.json ./

# Instalar dependencias DENTRO del contenedor
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto definido
EXPOSE 3000

# Comando para iniciar la app
CMD ["npm", "start"]