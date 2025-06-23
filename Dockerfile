FROM node:18

WORKDIR /app

COPY . .

RUN npm install

RUN npx cypress install

EXPOSE 5050

CMD ["npm", "start"]
