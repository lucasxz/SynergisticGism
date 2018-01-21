defmodule SynapiWeb.PageController do
  use SynapiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
