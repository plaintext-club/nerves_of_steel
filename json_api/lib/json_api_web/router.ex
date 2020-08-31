defmodule JsonApiWeb.Router do
  use JsonApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", JsonApiWeb do
    pipe_through :api
  end
end
