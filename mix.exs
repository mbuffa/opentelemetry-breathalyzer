defmodule OpentelemetryAlcotest.MixProject do
  use Mix.Project

  def project do
    [
      app: :opentelemetry_alcotest,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:absinthe, "~> 1.7.0"},
      {:jason, "~> 1.2"},
      {:opentelemetry_api, "~> 1.1"},
      {:telemetry, "~> 0.4 or ~> 1.0"}
    ]
  end

  defp docs do
    [
      main: "OpentelemetryAlcotest",
      formatters: ["html"]
    ]
  end

  defp package do
    [
      name: "opentelemetry-alcotest",
      maintainers: ["Maxime Buffa"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/mbuffa/opentelemetry-alcotest"}
    ]
  end
end