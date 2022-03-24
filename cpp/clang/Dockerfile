FROM alpine as base
RUN apk add clang llvm lld cmake make musl-dev compiler-rt compiler-rt-static g++ && ln -s /usr/bin/ld /usr/bin/ld.ldd
WORKDIR /usr/src/cpp
COPY . .
RUN chmod +x entrypoint.sh
CMD ./entrypoint.sh