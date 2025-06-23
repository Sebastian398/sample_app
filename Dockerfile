FROM node:18

RUN apt-get update && apt-get install -y xvfb

WORKDIR /app

COPY . .

RUN npm install

RUN npx cypress install

EXPOSE 5050

CMD ["npm", "start"]
