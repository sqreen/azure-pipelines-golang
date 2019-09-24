FROM golang:1.12-alpine
# cf. https://docs.microsoft.com/en-us/azure/devops/pipelines/process/container-phases?view=azure-devops&tabs=yaml#requirements
RUN apk update && apk add bash nodejs-current libc6-compat gcompat libstdc++ libgcc shadow
RUN sed -i 's/^CREATE_MAIL_SPOOL=yes/CREATE_MAIL_SPOOL=no/' /etc/default/useradd
