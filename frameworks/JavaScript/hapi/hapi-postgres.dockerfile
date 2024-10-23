FROM node:18.20.3-slim

COPY ./ ./

RUN npm install

ENV NODE_HANDLER sequelize-postgres

EXPOSE 8080

CMD ["node", "app.js"]
