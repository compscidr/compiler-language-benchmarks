FROM alpine as base
RUN apk add g++ cmake make libc-dev
WORKDIR /usr/src/cpp
COPY . .
CMD ./entrypoint.sh