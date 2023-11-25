defmodule OpentelemetryBreathalyzerWeb.Socket do
  @moduledoc false
  use Phoenix.Socket
  use Absinthe.Phoenix.Socket, schema: OpentelemetryBreathalyzerWeb.Schema

  @impl true
  def connect(_params, socket, _connect_info) do
    {:ok, socket}
  end

  @impl true
  def id(_socket), do: nil
end
