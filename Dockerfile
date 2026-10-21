FROM node:16-alpine

RUN apk add --no-cache git

WORKDIR /app

RUN git clone --depth 1 --branch 1.x https://github.com/EvolutionAPI/evolution-api.git .

RUN npm install

EXPOSE 8080

ENV SERVER_PORT=8080

CMD ["node", "src/main.js"]
