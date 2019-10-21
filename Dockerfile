FROM alpine:3.8
MAINTAINER Emory Dunn <edunn@emorydunn.com>

RUN set -ex && \
    apk add --no-cache openssl openssh-client git git-lfs py-pygments rsync hugo

CMD ["hugo"]
