FROM node:20.17-slim

COPY ./ ./

RUN npm install
RUN npm run build

ENV NODE_ENV production
ENV DATABASE_CONFIGURATION_PROFILE mongodb
ENV FRAMEWORK fastify

EXPOSE 8080
CMD ["node", "dist/main"]
