defmodule DrabExampleBootstrap4Web.PageController do
  use DrabExampleBootstrap4Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
