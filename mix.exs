defmodule AvroraRuntimeConfig.MixProject do
  use Mix.Project

  def project do
    [
      app: :avrora_runtime_config,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {AvroraRuntimeConfig.Application, []}
    ]
  end

  defp deps do
    [
      {:avrora, "~> 0.24.2"}
    ]
  end
end
