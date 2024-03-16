FROM node:20-alpine

RUN apk add --no-cache tini \
 && npm -g install sass

ENTRYPOINT [ "/sbin/tini", "-g", "-e", "130", "--" ]
CMD [ "sass" ]
