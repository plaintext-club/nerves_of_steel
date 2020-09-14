defmodule JsonApiWeb.GpioView do
  use JsonApiWeb, :view

  def render("write.json", %{value: value}) do
    %{gpio: 16, value: value}
  end

  def render("read.json", %{value: value}) do
    %{gpio: 26, value: value}
  end

  def render("setup.json", _assigns) do
    [
      %{
        gpio: 16,
        pull_mode: "pullup"
      }
    ]
  end
end
