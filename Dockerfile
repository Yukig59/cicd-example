FROM node:18
LABEL org.opencontainers.image.source = "https://github.com/Yukig59/cicd-example"
ADD ../.. /app/
WORKDIR /app
RUN npm i
RUN npm run build
EXPOSE 3000
COPY docker/next/docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint

ENTRYPOINT ["docker-entrypoint"]
CMD npm run start
