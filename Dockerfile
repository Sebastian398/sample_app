FROM node:18

RUN apt-get update && apt-get install libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libnss3 libxss1 libasound2 libxtst6 xauth xvfb

WORKDIR /app

COPY . .

RUN npm install

RUN npx cypress install

EXPOSE 5050

CMD ["npm", "start"]
