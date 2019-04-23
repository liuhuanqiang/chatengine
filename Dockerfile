FROM golang:latest


RUN apt-get update && apt-get install -y supervisor

RUN mkdir /supervisor/

COPY supervisord.conf /supervisor/supervisord.conf

COPY . /chatengine
WORKDIR /chatengine
RUN ./build.sh

ENTRYPOINT [""]

CMD /usr/bin/supervisord -c /supervisor/supervisord.conf -n