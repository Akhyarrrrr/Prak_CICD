FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /Prak_CICD

EXPOSE 8080

CMD ["/Prak_CICD"]
