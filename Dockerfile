FROM golang:1.12.4-stretch

RUN apk add bash git gcc g++ libc-dev

RUN mkdir /supervisor/

COPY supervisord.conf /supervisor/supervisord.conf

COPY . /chatengine
WORKDIR /chatengine
RUN ./build.sh

ENTRYPOINT [""]

CMD /usr/bin/supervisord -c /supervisor/supervisord.conf -n