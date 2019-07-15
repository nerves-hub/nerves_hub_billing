use Mix.Config

config :nerves_hub_billing, NervesHubBilling.Repo,
  ssl: false,
  pool_size: 30,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :nerves_hub_billing, NervesHubBillingWeb.Endpoint,
  http: [port: 5001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
