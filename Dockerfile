FROM nodejs:4

RUN sh /opt/rh/rh-nodejs4/enable && \
    export PATH=PATH=/opt/rh/rh-nodejs4/root/usr/bin:/opt/app-root/src/node_modules/.bin/:/opt/app-root/src/.npm-global/bin/:/opt/app-root/src/bin:/opt/app-root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin && \
    /opt/rh/rh-nodejs4/root/usr/bin/npm install -g thelounge && \
    /opt/rh/rh-nodejs4/root/usr/bin/npm cache clean && \
    mkdir -p /lounge

VOLUME ["/lounge/data"]
EXPOSE 9000

ENTRYPOINT ["lounge", "--host", "0.0.0.0" "--port", "9000"]
