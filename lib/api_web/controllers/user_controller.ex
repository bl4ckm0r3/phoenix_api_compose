defmodule ApiWeb.UserController do
  use ApiWeb, :controller

  def index(conn, _params) do
    render(conn, User: {})
  end
end
