FROM node:latest
WORKDIR /usr/src/app
COPY index.html/* /
RUN npm install
EXPOSE 3000
CMD [ "npm","start" ]
