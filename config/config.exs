# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :drab_example_bootstrap4, DrabExampleBootstrap4Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uMoWhnJA8+EH9bvi8wVyiHk+a89EV29ao7aHFjRDrEyzdnBXc3G5DsEeO4/sDjkb",
  render_errors: [view: DrabExampleBootstrap4Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DrabExampleBootstrap4.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Drab
config :drab, DrabExampleBootstrap4Web.Endpoint,
  otp_app: :drab_example_bootstrap4

# Configures default Drab file extension
config :phoenix, :template_engines,
  drab: Drab.Live.Engine

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

config :drab, :modal_css, :bootstrap4

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
