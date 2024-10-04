FROM golang:1.23.1

WORKDIR /gramework

COPY ./src /gramework

RUN go mod download

RUN go build -ldflags="-s -w" -o app .

EXPOSE 8080

CMD ./app
