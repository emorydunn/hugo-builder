FROM registry.gitlab.com/pages/hugo/hugo_extended:0.58.3
MAINTAINER Emory Dunn <edunn@emorydunn.com>

RUN set -ex && \
    apk add --no-cache openssl openssh-client git git-lfs py-pygments rsync

CMD ["hugo"]
