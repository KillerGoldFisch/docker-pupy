FROM alpine:latest

MAINTAINER Kevin Gliewe <kevingliewe@gmail.com>

ENV SERVERPORT 27066
ENV TRANSPORT "ssl"

RUN apk update && apk add python py-pip py-crypto unzip zlib-dev py-pillow git

RUN pip install --upgrade pip && pip install rpyc pefile pyyaml rsa

RUN git clone --recursive https://github.com/n1nj4sec/pupy /workdir

#ADD https://github.com/n1nj4sec/pupy/archive/master.zip /pupy.zip

#RUN unzip pupy.zip && mv pupy-master workdir && rm pupy.zip

#ADD https://github.com/n1nj4sec/pupy-binaries/archive/master.zip /pupy-binaries.zip

#RUN unzip pupy-binaries.zip && mv pupy-binaries-master payload_templates && mv payload_templates /workdir/pupy/ && rm pupy-binaries.zip

RUN pip install -r /workdir/requirements.txt

EXPOSE ${SERVERPORT}

WORKDIR /workdir/pupy

CMD ["python", "pupysh.py", "--port", "27066", "--transport", "ssl"]