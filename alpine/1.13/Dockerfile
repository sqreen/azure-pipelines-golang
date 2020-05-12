# Following doc https://github.com/microsoft/azure-pipelines-agent/blob/master/docs/design/non-glibc-containers.md
FROM node:10-alpine

RUN apk add --no-cache --virtual .pipeline-deps readline linux-pam \
  && apk add bash sudo shadow \
  && apk del .pipeline-deps

LABEL "com.azure.dev.pipelines.agent.handler.node.path"="/usr/local/bin/node"

RUN apk -U --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
  add make git gcc musl-dev libc6-compat

RUN set -eux; \
    wget -O go.tgz https://dl.google.com/go/go1.13.linux-amd64.tar.gz; \
    tar -C /usr/local -xzf go.tgz; \
    rm go.tgz

ENV PATH="${PATH}:/usr/local/go/bin"

CMD [ "node" ]
