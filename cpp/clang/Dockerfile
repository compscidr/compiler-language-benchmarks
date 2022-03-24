FROM alpine as base
RUN apk add clang llvm lld cmake make libc-dev && ln -s /usr/bin/ld.lld /usr/bin/ld
WORKDIR /usr/src/cpp
COPY . .
RUN chmod +x entrypoint.sh
CMD ls $HOME/alpine_tree/usr
#CMD export CMAKE_C_COMPILER= && ./entrypoint.sh