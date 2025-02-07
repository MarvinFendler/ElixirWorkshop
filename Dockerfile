FROM elixir:latest

WORKDIR /app

COPY . .

RUN mix local.hex --force

RUN mix local.rebar --force

RUN mix deps.get --force

CMD ["tail", "-f", "/dev/null"]