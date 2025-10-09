FROM cypress/base:18.20.3

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5050

CMD ["npm", "start"]
