FROM alpine:edge as base
RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update && apk add zig@testing
WORKDIR /usr/src/zig
COPY hello.zig .
RUN zig build-exe hello.zig
CMD ./hello