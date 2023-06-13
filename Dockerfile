FROM --platform=linux/amd64 node:18
LABEL org.opencontainers.image.source https://github.com/yukig59/cicd-example
ADD . /app/
WORKDIR /app
RUN npm i
RUN npm run build
EXPOSE 3000
CMD npm run start
