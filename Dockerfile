FROM node:20-alpine

RUN apk add --no-cache git

WORKDIR /app

RUN git clone --depth 1 --branch main https://github.com/EvolutionAPI/evolution-api.git .

RUN npm install --legacy-peer-deps

EXPOSE 8080

ENV SERVER_PORT=8080

CMD ["node", "src/main.js"]
