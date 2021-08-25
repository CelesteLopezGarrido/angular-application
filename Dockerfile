FROM node:10.16.0-alpine

RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      freetype-dev \
      harfbuzz \
      ca-certificates \
      ttf-freefont

ENV CHROME_BIN /usr/bin/chromium-browser

WORKDIR /usr/app/

COPY . ./

RUN npm install

CMD npm run test-ci