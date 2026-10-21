FROM node:20-alpine

RUN apk add --no-cache git python3 make g++ openssl

WORKDIR /app

RUN git clone --depth 1 https://github.com/EvolutionAPI/evolution-api.git .

RUN cp .env.example .env

RUN npm install --legacy-peer-deps

RUN npx prisma generate

RUN npm run build

EXPOSE 8080

ENV SERVER_PORT=8080

CMD ["node", "dist/main.js"]
