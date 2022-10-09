FROM node:16.17.1-alpine3.15
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY --chown=app:app package*.json .
RUN npm install
COPY --chown=app:app . .
ENV API_URL=http://api.myapp.com/
EXPOSE 3000
CMD ["npm", "start"]