import Config

config :rollbax, access_token: System.fetch_env!("ROLLBAR_ACCESS_TOKEN")
