defmodule AvroraRuntimeConfig.Application do
  use Application

  @impl Application
  def start(_type, _args) do
    children = [
      AvroraRuntimeConfig.AvroraClient
    ]

    opts = [strategy: :one_for_one, name: AvroraRuntimeConfig.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
