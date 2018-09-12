FROM alpine:3.8
MAINTAINER Emory Dunn <edunn@emorydunn.com>

ENV HUGO_VERSION=0.48 \
    HUGO_MD5SUM=c7956b07ac50c6da6229a646add62e92

RUN set -ex && \
    apk add --no-cache openssl openssh-client git git-lfs py-pygments

RUN wget -q https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
    echo "${HUGO_MD5SUM}  hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" | md5sum -c && \
    mkdir hugo_${HUGO_VERSION}_linux_amd64 && \
    tar xf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -C hugo_${HUGO_VERSION}_linux_amd64 && \
    cp hugo_${HUGO_VERSION}_linux_amd64/hugo /usr/bin/hugo && \
    rm -rf hugo_${HUGO_VERSION}_linux_amd64 && \
    rm -f hugo_${HUGO_VERSION}_linux_amd64.tar.gz

CMD ["hugo"]
