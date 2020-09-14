defmodule JsonApiWeb.GpioController do
  use JsonApiWeb, :controller

  def write(conn, %{"value" => "0"}) do
    {:ok, gpio} = Circuits.GPIO.open(16, :output)
    Circuits.GPIO.write(gpio, 0)
    render(conn, "write.json", value: 0)
  end

  def write(conn, %{"value" => "1"}) do
    {:ok, gpio} = Circuits.GPIO.open(16, :output)
    Circuits.GPIO.write(gpio, 1)
    render(conn, "write.json", value: 1)
  end

  def read(conn, _params) do
    {:ok, gpio} = Circuits.GPIO.open(26, :input)
    value = Circuits.GPIO.read(gpio)
    render(conn, "read.json", value: value)
  end

  def setup(conn, _params) do
    {:ok, gpio} = Circuits.GPIO.open(26, :input)
    Circuits.GPIO.set_pull_mode(gpio, :pullup)
    render(conn, "setup.json")
  end
end
