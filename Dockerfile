FROM alpine:3.12
MAINTAINER Stefano Marinelli <stefano@dragas.it>

RUN apk add --no-cache git python3 py3-jinja2 py3-paramiko && git clone https://github.com/PackeTsar/checkmyip.git && ln -s /usr/bin/python3 /usr/bin/python && chmod a+rx /checkmyip/checkmyip.py && apk del --no-cache git

EXPOSE 22
EXPOSE 23
EXPOSE 80

ENTRYPOINT /checkmyip/checkmyip.py
