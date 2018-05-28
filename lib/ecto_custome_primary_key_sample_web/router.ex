defmodule EctoCustomePrimaryKeySampleWeb.Router do
  use EctoCustomePrimaryKeySampleWeb, :router

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

  scope "/", EctoCustomePrimaryKeySampleWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/items", ItemController # <-- 作成したモデルのルーティングを追加
  end

end
