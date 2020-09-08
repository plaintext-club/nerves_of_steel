defmodule JsonApiWeb.LedView do
  use JsonApiWeb, :view

  def render("enable.json", _args) do
    %{led: "enabled"}
  end

  def render("disable.json", _args) do
    %{led: "disabled"}
  end
end
