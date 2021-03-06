defmodule Penguin.Router do
  use Penguin.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # Other scopes may use custom stacks.
  scope "/api", Penguin do
    pipe_through :api

    resources "/todos", TodoController
  end

  scope "/", Penguin do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end
end
