FROM alpine as base
RUN apk add go
WORKDIR /usr/src/go
COPY hello.go .
RUN go build hello.go
CMD ./hello