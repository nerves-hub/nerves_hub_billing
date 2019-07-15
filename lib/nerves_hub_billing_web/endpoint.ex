defmodule NervesHubBillingWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :nerves_hub_billing

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]

  plug Plug.MethodOverride
  plug Plug.Head

  plug NervesHubBillingWeb.Router
end
