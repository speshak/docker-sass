FROM node:20-alpine

LABEL org.opencontainers.image.description "SASS compiler"
LABEL org.opencontainers.image.source "https://github.com/speshak/docker-sass"
LABEL org.opencontainers.image.authors "Scott Peshak"

RUN apk add --no-cache tini \
 && npm -g install sass

ENTRYPOINT [ "/sbin/tini", "-g", "-e", "130", "--" ]
CMD [ "sass" ]
