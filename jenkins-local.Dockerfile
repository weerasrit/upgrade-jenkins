FROM jenkins/jenkins:2.350-alpine
USER root

RUN apk --update --no-cache add openssh sshpass shadow gettext curl wget\
    && apk add --virtual build-dependencies build-base python3 python3-dev gcc libffi-dev openssl-dev busybox-extras

RUN apk upgrade --update \
    && apk add -U tzdata \
    && cp /usr/share/zoneinfo/Asia/Bangkok /etc/localtime \
    && rm -rf \
    /var/cache/apk/*


USER jenkins
