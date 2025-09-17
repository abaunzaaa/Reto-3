# Usar imagen base ligera de Node
FROM node:18-alpine

# Definir el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto que usa la app
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "app.js"]