FROM node:18-alpine

RUN npm install -g @evolution-api/evolution-api

EXPOSE 8080

CMD ["evolution-server"]
