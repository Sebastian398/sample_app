FROM node:18

RUN apt-get update && apt-get install -y \
    libnss3 \
    xvfb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN npm install

RUN npx cypress install

EXPOSE 5050

CMD ["npm", "start"]
