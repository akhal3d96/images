FROM alpine:3.9 AS build
RUN apk add --no-cache gcc make musl-dev git
RUN git clone https://unix4lyfe.org/git/darkhttpd
WORKDIR /darkhttpd
RUN make

FROM alpine:3.9
COPY --from=build /darkhttpd/darkhttpd /bin/darkhttpd
EXPOSE 80
WORKDIR /var/www/
ENTRYPOINT [ "/bin/darkhttpd","."]