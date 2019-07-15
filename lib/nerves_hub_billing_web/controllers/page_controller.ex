defmodule NervesHubBillingWeb.PageController do
  use NervesHubBillingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
