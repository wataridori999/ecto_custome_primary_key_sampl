defmodule EctoCustomePrimaryKeySampleWeb.PageController do
  use EctoCustomePrimaryKeySampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
