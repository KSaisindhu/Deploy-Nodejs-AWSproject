# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://localhost:3000" \
PORT=3000 \wq!
STATIC_DIR="./client" \
<<<<<<< HEAD
PUBLISHABLE_KEY="" \
SECRET_KEY=""
=======
PUBLISHABLE_KEY="  " \
SECRET_KEY=" "
>>>>>>> cab024a (Added client folder)

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
