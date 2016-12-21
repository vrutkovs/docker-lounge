FROM node:6

ENV LOUNGE_VERSION 2.1.0
ENV NODE_ENV production

ENV LOUNGE_HOME "/home/lounge/data"

RUN mkdir -p "/home/lounge/data"
VOLUME "/home/lounge/data"

# Install thelounge.
RUN npm install -g thelounge@${LOUNGE_VERSION}
RUN npm cache clean

# Expose HTTP.
ENV PORT 9000
EXPOSE 9000

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
