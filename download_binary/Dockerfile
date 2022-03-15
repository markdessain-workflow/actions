# Container image that runs your code
FROM alpine:3.10

RUN wget https://github.com/cli/cli/releases/download/v2.5.2/gh_2.5.2_linux_386.tar.gz -O ghcli.tar.gz
RUN tar --strip-components=1 -xf ghcli.tar.gz

RUN apk add git

COPY entrypoint.sh /entrypoint.sh
COPY post-entrypoint.sh /post-entrypoint.sh
