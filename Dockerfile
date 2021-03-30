FROM golang:1.14

RUN mkdir /app
RUN mkdir /app/bin
RUN mkdir /app/config
RUN mkdir /NFs
RUN mkdir /NFs/upf
RUN mkdir /NFs/upf/build

COPY NFs/upf/build /app/NFs/upf/build
COPY config /app/config
COPY bin /app/bin

COPY run.sh /app

WORKDIR /app

CMD ["/app/run.sh"]