FROM centos:7

RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - && \
    yum install nodejs -y && \
    yum clean all && \
    npm install -g nodejs && \
    npm cache clean && \
    mkdir -p /lounge

VOLUME ["/lounge/data"]
EXPOSE 9000

ENTRYPOINT ["lounge", "--host", "0.0.0.0" "--port", "9000"]
