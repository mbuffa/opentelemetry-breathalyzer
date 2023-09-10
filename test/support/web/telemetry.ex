defmodule OpentelemetryBreathalyzerWeb.Telemetry do
  use Supervisor

  # import Telemetry.Metrics

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg, name: __MODULE__)
  end

  def init(_init_arg) do
    Supervisor.init([], strategy: :one_for_one)
  end
end
