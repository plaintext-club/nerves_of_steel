defmodule JsonApiWeb.LedController do
  use JsonApiWeb, :controller

  def enable(conn, _params) do
    Led.enable
    render(conn, "enable.json")
  end

  def disable(conn, _params) do
    Led.disable
    render(conn, "disable.json")
  end
end
