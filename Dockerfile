FROM node:alpine

#install dependancies
WORKDIR /usr/loginapp
COPY ./package.json ./
RUN npm install
COPY ./ ./
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.3/wait /wait
RUN chmod +x /wait
CMD /wait && npm start
