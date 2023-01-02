FROM elixir:1.14.2-alpine

ARG UID=1000
ARG GID=1000

RUN apk add --no-cache g++ && \
  addgroup -g "$GID" -S app && \
  adduser -u "$UID" -S -G app app

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

USER app

WORKDIR /home/app/prj

RUN mix local.hex --force && mix local.rebar --force

ENTRYPOINT ["entrypoint.sh"]
