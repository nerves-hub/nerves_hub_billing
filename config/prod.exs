use Mix.Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.
#
# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.

config :nerves_hub_billing, NervesHubBillingWeb.Endpoint,
  load_from_system_env: true,
  server: true,
  url: [host: "billing.nerves-hub.org", port: 80]

# Do not print debug messages in production
config :logger, level: :debug

config :rollbax,
  environment: to_string(Mix.env()),
  enabled: true,
  enable_crash_reports: true

config :rollbax, access_token: System.fetch_env!("ROLLBAR_ACCESS_TOKEN")
