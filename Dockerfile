FROM node:16-alpine
WORKDIR /app

COPY package*.json ./
COPY tsconfig.json ./
RUN npm install

COPY . ./
RUN npx tsc
RUN npm run dist/app.js
EXPOSE 4000

