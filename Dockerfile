FROM cypress/base:18.20.3

WORKDIR /app

# Copiar solo package.json y package-lock.json primero
COPY package*.json ./

# Instalar TODAS las dependencias (incluye devDependencies = Cypress)
RUN npm install --unsafe-perm=true --allow-root

# Ahora sí, copiar el resto del código
COPY . .

RUN chmod +x ./node_modules/.bin/cypress

EXPOSE 5050
CMD ["npm", "start"]
