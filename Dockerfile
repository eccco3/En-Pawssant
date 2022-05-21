FROM node:10.19
WORKDIR /usr/src/app

COPY package*.json ./
COPY tsconfig.json ./
RUN npm install

COPY . ./
RUN npm run build

EXPOSE 8000
CMD npm run start