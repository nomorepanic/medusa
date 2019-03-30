defmodule Medusa.Server do
  alias Plug.Cowboy
  alias Medusa.Server.Router
  require Logger

  def children() do
    port = Confex.get_env(:medusa, :port)
    [Cowboy.child_spec(scheme: :http, plug: Router, options: [port: port])]
  end

  def start(_type, _args) do
    Logger.info("Starting Medusa on http://localhost:4001")
    Supervisor.start_link(children(), strategy: :one_for_one)
  end
end