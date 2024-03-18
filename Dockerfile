FROM node:21-alpine as nodeBuilder

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf
COPY --from=nodeBuilder /usr/src/app/dist /usr/share/nginx/html
EXPOSE 8080