FROM marcelocg/phoenix

ADD . /code
WORKDIR /code

RUN mix local.hex --force
RUN mix deps.get
RUN mix local.rebar --force
