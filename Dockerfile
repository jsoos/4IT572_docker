FROM node:10

COPY . . 

# run může být v souboru vícekrát, tak aby byly odděleny jednotlivé části konfigurace, umožňuje to při aktualizacích stahovat jen změněnou část test
RUN npm install \
    && npm run build

# číslo portu serveru
EXPOSE 3000 

ENTRYPOINT npm run start
