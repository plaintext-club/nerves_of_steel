defmodule Led do
  @moduledoc """
  Documentation for `Led`.
  """

  alias Nerves.Leds

  def enable do
    Leds.set(onboard: true)
  end

  def disable do
    Leds.set(onboard: false)
  end
end
