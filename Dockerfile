FROM nodejs:4

RUN sh /opt/rh/rh-nodejs4/enable && \
    npm install -g thelounge && \
    npm cache clean && \
    mkdir -p /lounge

VOLUME ["/lounge/data"]
EXPOSE 9000

ENTRYPOINT ["lounge", "--host", "0.0.0.0" "--port", "9000"]
