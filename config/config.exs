# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :penguin,
  ecto_repos: [Penguin.Repo]

# Configures the endpoint
config :penguin, Penguin.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QP8lGI3ra68yzdkAB47C3Pg3J6kKJXIPL3001B8VsT5XcmVElB14eDvzyfLHUIi7",
  render_errors: [view: Penguin.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Penguin.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
