FROM node:latest

LABEL     author="Gopinath R"
ENV NODE=development
ENV PORT=3000

COPY    . /var/www
WORKDIR /var/www
RUN     npm install
VOLUME  ["/var/www"]
EXPOSE  $PORT

ENTRYPOINT [ "npm", "start" ]
