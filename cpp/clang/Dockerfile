FROM alpine as base
RUN apk add clang llvm lld cmake make musl-dev compiler-rt compiler-rt-static g++ && ln -s /usr/bin/ld /usr/bin/ld.ldd
WORKDIR /usr/src/cpp
COPY . .
RUN chmod +x entrypoint.sh
CMD ./entrypoint.sh

# nb: I should have been able to set some of the CXX variables via ENV in the Dockerfile.
# in order to not have to link ld -> ldd but it didn't seem to work, see this post:
# https://www.ranvir.tech/posts/clang-on-alpine/
# https://stackoverflow.com/questions/7031126/switching-between-gcc-and-clang-llvm-using-cmake

# nb: g++ is included because in alpine, it seems to be the only package which provides the
# iostream and other such headers: https://unix.stackexchange.com/a/562971. I tried to use
# a multistage build and copy the headers over, but it didn't quite work out, so this is good
# enough for now.
