FROM node:18-alpine

RUN apk add --no-cache git python3 make g++

WORKDIR /app

RUN git clone https://github.com/EvolutionAPI/evolution-api.git .

RUN npm install

RUN npm run build

EXPOSE 8080

CMD ["npm", "start"]
