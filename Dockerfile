# Utilice un tiempo de ejecución oficial de Node.js como imagen principal
FROM node:14

# Establezca el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copie package.json y package-lock.json en el directorio de trabajo
COPY paquete*.json ./

# Instalar dependencias de aplicaciones
RUN npm install

# Copie el resto del código de la aplicación en el directorio de trabajo
COPY . .

# Exponer el puerto en el que se ejecuta la aplicación
EXPOSE 3000

# Defina el comando para ejecutar la aplicación
CMD ["npm", "start"]
