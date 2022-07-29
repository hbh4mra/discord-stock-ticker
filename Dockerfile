FROM golang:latest AS base
LABEL org.opencontainers.image.source https://github.com/hbh4mra/discord-stock-ticker

WORKDIR /go/src/discord-stock-ticker

COPY . .

ARG TARGETOS=linux
ARG TARGETARCH=amd64

RUN GOOS=$TARGETOS GOARCH=$TARGETARCH go build -o discord-stock-ticker

ENTRYPOINT ["/go/src/discord-stock-ticker/discord-stock-ticker"]
