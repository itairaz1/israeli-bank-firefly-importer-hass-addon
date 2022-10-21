ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache nodejs npm chromium

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

WORKDIR /app

RUN npm i israeli-bank-firefly-importer

# the rest of your dockerfile here
RUN mkdir /config/israeli-bank-firefly-importer

ENV CONFIG_PATH='/config/israeli-bank-firefly-importer'

CMD ["israeli-bank-firefly-importer"]