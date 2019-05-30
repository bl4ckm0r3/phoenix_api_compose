# ./Dockerfile

# Extend from the official Elixir image
FROM elixir:1.8

RUN apt-get update && \
  apt-get install -y --no-install-recommends inotify-tools build-essential postgresql-client bash apt-utils

ENV APP_NAME api

# Create api directory and copy the Elixir projects into it
RUN mkdir /api
COPY . /api
WORKDIR /api
EXPOSE 4000
ENTRYPOINT [ "/api/entrypoint.sh" ]

RUN chmod 777 "/api/entrypoint.sh"
# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
RUN mix local.hex --force 
RUN mix local.rebar --force
