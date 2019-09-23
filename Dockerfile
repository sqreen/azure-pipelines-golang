ARG ALPINE_VERSION=alpine
FROM golang:$ALPINE_VERSION
# cf. https://docs.microsoft.com/en-us/azure/devops/pipelines/process/container-phases?view=azure-devops&tabs=yaml#requirements
RUN apk update && apk add bash nodejs