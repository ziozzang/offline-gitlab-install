FROM alpine
RUN apk update && apk add -f mc vim bash curl wget git tmux screen htop docker-cli && \
  rm -fR /var/cache/apk/* && \
  curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-Linux-x86_64" \
    -o /usr/bin/docker-compose && \
  chmod +x /usr/bin/docker-compose
