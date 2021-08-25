#Primera Etapa
FROM node:14-alpine as build-step
RUN apk add chromium
ENV CHROME_BIN='/usr/bin/chromium-browser'
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build --prod

#Segunda Etapa
FROM nginx:1.17.1-alpine
COPY --from=build-step /app/dist/angularApplication /usr/share/nginx/html