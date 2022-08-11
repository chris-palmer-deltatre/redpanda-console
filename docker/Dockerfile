FROM alpine:latest

WORKDIR /app

RUN apk update && apk add ca-certificates
COPY ./console /app/console
ENTRYPOINT ["./console"]

