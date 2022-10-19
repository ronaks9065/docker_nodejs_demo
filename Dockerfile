FROM node:14

WORKDIR /usr/src/app

COPY package.json .
RUN npm install 
RUN sudo apt install apache2 -y
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
