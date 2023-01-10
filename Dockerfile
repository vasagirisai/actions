FROM alpine

LABEL \
  "name"="GitHub Pull Request Action" \
  "homepage"="https://github.com/marketplace/actions/github-pull-request" \
  "repository"="https://github.com/vasagirisai/actions" \
  "maintainer"="vasagirisai@gmail.com>"

ADD *.sh /

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
