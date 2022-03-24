FROM alpine as base
RUN apk add rust
WORKDIR /usr/src/rust
COPY hello.rs .
RUN rustc hello.rs
CMD ./hello