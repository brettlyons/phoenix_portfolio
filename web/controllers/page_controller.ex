defmodule PhoenixPortfolio.PageController do
  use PhoenixPortfolio.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
