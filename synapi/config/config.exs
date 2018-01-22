# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :synapi, SynapiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QFpueSAk+g03spCwOq2BowCwCJMGuQvfaIyeomHR0/QdrAj5KzMT4kzu5ickpK/q",
  render_errors: [view: SynapiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Synapi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

#CORSPlug
config :cors_plug,
  origin: ["*"],
  max_age: 86400,
  methods: ["GET", "POST"]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
