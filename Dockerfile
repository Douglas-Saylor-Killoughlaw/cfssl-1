FROM golang:1.13.3@sha256:6a693fbaba7dd8d816f6afce049fb92b280c588e0a677c4c8db26645e613fc15

WORKDIR /workdir
RUN git clone -b v1.4.1 https://github.com/cloudflare/cfssl.git /workdir


RUN git clone https://github.com/cloudflare/cfssl_trust.git /etc/cfssl && \
    make clean && \
    make bin/rice && ./bin/rice embed-go -i=./cli/serve && \
    make all && cp bin/* /usr/bin/

COPY entrypoint.sh /workdir/entrypoint.sh

RUN chmod +x /workdir/entrypoint.sh

RUN mkdir /pad

EXPOSE 8888

ENTRYPOINT ["/workdir/entrypoint.sh"]
