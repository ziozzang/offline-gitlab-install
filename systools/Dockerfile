FROM alpine
RUN apk update && apk add -f mc vim bash curl wget git tmux screen htop iptables docker-cli && \
  rm -fR /var/cache/apk/* && \
  curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-Linux-x86_64" \
    -o /usr/bin/docker-compose && \
  curl -L "https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64" \
    -o /usr/bin/gitlab-runner && \
  chmod +x /usr/bin/docker-compose /usr/bin/gitlab-runner
