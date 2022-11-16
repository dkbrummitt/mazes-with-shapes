# Mazes

A maze generator. Deployed at [mazes.angelika.me](https://mazes.angelika.me/).

## Setup

To start your Phoenix server:

  * Install Elixir, Erlang, and NodeJS with `asdf install` or `brew install erlang elixir node` (It doesnt have to be asdf)
  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Install Brunch an npm build, `npm install brunch --save-dev`
  * Execute `node_modules/brunch/bin/brunch build`
  * Start Phoenix endpoint with `mix phx.server`

```sh
mix deps.get
cd assets
npm i
npm install brunch --save-dev
node_modules/brunch/bin/brunch build
cd ..
mix phx.server
```

Notes: Custom shapes must be 64x64px, PNGs and only black and white. Puzzle will match the black.

Now you can visit [`localhost:8000`](http://localhost:8000) from your browser.

## Tests

The unit tests require a HTMl validator server running at `localhost:8888` (see [vnu-elixir](https://github.com/angelikatyborska/vnu-elixir)). Start it with:
```
docker run -it --rm -p 8888:8888 validator/validator:latest
```
