FROM cypress/base:18.20.3

FROM node:18

WORKDIR /app

RUN npm install

COPY . .

EXPOSE 5050

CMD ["npm", "start"]
