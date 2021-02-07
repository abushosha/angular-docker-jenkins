FROM ubuntu
# stage 1
FROM node:alpine as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

# stage 2
FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR /usr/share/nginx/html
COPY --from=node /app/dist/angular-docker-jenkins /usr/share/nginx/html
