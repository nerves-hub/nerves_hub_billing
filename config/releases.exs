import Config

if rollbar_access_token = System.get_env("ROLLBAR_ACCESS_TOKEN") do
  config :rollbax, access_token: rollbar_access_token
else
  config :rollbax, enabled: false
end
