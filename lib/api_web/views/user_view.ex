defmodule ApiWeb.UserView do
  use ApiWeb, :view

  def render("index.json", %{user: user}) do
    user
  end

  def render("index.json", %{}) do
    %{wut: "wat"}
  end
end
