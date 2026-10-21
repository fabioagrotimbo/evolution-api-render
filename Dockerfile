FROM wppconnect/wppconnect-server:latest

EXPOSE 21465

ENV PORT=21465

CMD ["node", "dist/server.js"]
