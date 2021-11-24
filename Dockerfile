## staged install part 1 obtain gobuster binary
FROM golang:1-alpine as build

# sourced from https://github.com/OJ/gobuster
RUN go install github.com/OJ/gobuster/v3@latest

### ### ###
### staged install part 2 move binary to a clean alpine image

FROM alpine:latest

RUN apk add --no-cache ca-certificates && rm -rf /var/cache/*

RUN mkdir -p /app && adduser -D gobuster && chown -R gobuster:gobuster /app

USER gobuster
WORKDIR /app

COPY --from=build /go/bin/gobuster /app/gobuster

ENTRYPOINT ["./gobuster"]