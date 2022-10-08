FROM node:16.17.1-alpine3.15
RUN addgroup app && adduser -S -G app app
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
RUN mkdir node_modules/.cache && chmod -R 777 node_modules/.cache
ENV API_URL=http://api.myapp.com/
USER app
EXPOSE 3000
CMD ["npm", "start"]