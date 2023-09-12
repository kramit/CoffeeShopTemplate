FROM node:18.10.0


COPY package*.json ./

RUN npm install

COPY . .

ENV port=8080

EXPOSE 8080

CMD [ "npm", "start" ]