FROM node:20
WORKDIR /app
COPY package*.json ./
RUN npm i
RUN npm install --os=linux --cpu=x64 sharp
COPY . .
CMD FORCE_COLOR=1 node index.js