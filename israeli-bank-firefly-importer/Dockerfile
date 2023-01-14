ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache nodejs npm chromium

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

WORKDIR /app

COPY run.sh /
RUN chmod a+x /run.sh

RUN npm ci -g israeli-bank-firefly-importer@${BUILD_VERSION}

# Add user so we don't need --no-sandbox.
RUN addgroup -S pptruser && adduser -S -G pptruser pptruser \
    && mkdir -p /home/pptruser/Downloads /app \
    && chown -R pptruser:pptruser /home/pptruser \
    && chown -R pptruser:pptruser /app

# Run everything after as non-privileged user.
USER pptruser

CMD ["/run.sh"]
