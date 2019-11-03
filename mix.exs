defmodule StockToInflux.MixProject do
  use Mix.Project

  def project do
    [
      app: :stock_to_influx,
      version: "0.1.0",
      elixir: "~> 1.9",
      config_path: "config/config.exs",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:fluxter],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:vantagex, "0.1.4"},
      {:decimal, "~> 1.0"},
      {:instream, "~> 0.21"}
    ]
  end
end
