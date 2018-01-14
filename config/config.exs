# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cash_plan,
  ecto_repos: [CashPlan.Repo]

# Configures the endpoint
config :cash_plan, CashPlanWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u7L6juHLKz3iRx8OeONOTYQb/e1lw17imbX/ZjEVY4rcTPhvzTonEGH8SwNhQyvm",
  render_errors: [view: CashPlanWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CashPlan.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
