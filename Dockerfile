FROM nodejs:4

RUN sh /opt/rh/rh-nodejs4/enable && \
    /opt/rh/rh-nodejs4/root/usr/bin/npm install -g thelounge && \
    /opt/rh/rh-nodejs4/root/usr/bin/npm cache clean && \
    mkdir -p /lounge

VOLUME ["/lounge/data"]
EXPOSE 9000

ENTRYPOINT ["lounge", "--host", "0.0.0.0" "--port", "9000"]
