FROM node:18

RUN apt-get update && apt-get install -y --no-install-recommends \
    xvfb \
    libnss3 \
    libxss1 \
    libasound2 \
    libgbm-dev \
    libgtk-3-0 \
    libnotify-dev \
    libgconf-2-4 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libgdk-pixbuf2.0-0 \
    libfontconfig1 \
    libjpeg62-turbo \
    libsecret-1-0 \
    libpng16-16 \
    libglib2.0-0 \
    libcups2 \
    libnspr4 \
    libexpat1 \
    libdbus-glib-1-2 \
    libxrandr2 \
    libxtst6 \
    procps \
    ca-certificates \
    fonts-liberation \
    lsb-release \
    xdg-utils \
    wget \
    git \
    --no-install-suggests && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN npm install

RUN npx cypress install

EXPOSE 5050

CMD ["npm", "start"]
