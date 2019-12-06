# Following doc https://github.com/microsoft/azure-pipelines-agent/blob/master/docs/design/non-glibc-containers.md
FROM node:10-alpine

RUN apk add --no-cache --virtual .pipeline-deps readline linux-pam \
  && apk add bash sudo shadow \
  && apk del .pipeline-deps

LABEL "com.azure.dev.pipelines.agent.handler.node.path"="/usr/local/bin/node"

# Go, git, musl-dev (libc headers), gcc and libc6-compat to have the libc6.so
# symlink to muslc
RUN apk add 'go~1.12' git gcc musl-dev libc6-compat

CMD [ "node" ]
