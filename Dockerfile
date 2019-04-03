ARG GO_VERSION=1.12

FROM golang:${GO_VERSION} AS builder

ENV URL=http://1406568753.law.infralabs.cs.ui.ac.id:20606
ENV MQUNAME=0806444524
ENV MQPW=0806444524
ENV MQHOST=/0806444524
ENV MQURL=http://152.118.148.103:15674/stomp
ENV NPM=1406568753

WORKDIR /law-3-fe

COPY . ./

RUN CGO_ENABLED=0 GOOS=linux go build -mod=vendor -o app 

CMD [ "./app" ]

EXPOSE 20605