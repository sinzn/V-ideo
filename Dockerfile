FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm init -y

RUN npm i webrtc socket.io express

EXPOSE 3000

CMD ["node", "server.js"]




