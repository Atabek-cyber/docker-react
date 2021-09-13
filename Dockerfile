FROM node:alpine 
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

COPY from /usr/share/nginx/html
COPY conf /etc/nginx
VOLUME /var/log/nginx/log