FROM node:16.17.1-alpine3.16
WORKDIR /app
COPY . .
RUN npm install
ENV API_URL=http://api.myapp.com/