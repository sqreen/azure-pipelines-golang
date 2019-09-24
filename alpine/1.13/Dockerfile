FROM golang:1.13-alpine
# cf. https://docs.microsoft.com/en-us/azure/devops/pipelines/process/container-phases?view=azure-devops&tabs=yaml#requirements
RUN apk update && apk add bash nodejs-current libc6-compat gcompat libstdc++ libgcc shadow sudo
RUN sed -i 's/^CREATE_MAIL_SPOOL=yes/CREATE_MAIL_SPOOL=no/' /etc/default/useradd
