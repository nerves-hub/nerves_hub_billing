defmodule NervesHubBillingWeb.Router do
  use NervesHubBillingWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", NervesHubBillingWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", NervesHubBillingWeb do
  #   pipe_through :api
  # end
end
