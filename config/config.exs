# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_portfolio,
  ecto_repos: [PhoenixPortfolio.Repo]

# Configures the endpoint
config :phoenix_portfolio, PhoenixPortfolio.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MJn9MvChVHZCDxLi0iHmxQr8KEYqtUcrr+PZGQ734eUCOOHNJY10EldQ9SH2HzNA",
  render_errors: [view: PhoenixPortfolio.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixPortfolio.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
