defmodule OpentelemetryBreathalyzerWeb.Telemetry do
  @moduledoc false
  use Supervisor

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg, name: __MODULE__)
  end

  def init(_init_arg) do
    Supervisor.init([], strategy: :one_for_one)
  end
end
