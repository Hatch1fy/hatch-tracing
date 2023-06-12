defmodule HatchTracing.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :hatch_tracing,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "HatchTracing",
      source_url: "https://github.com/Hatch1fy/hatch-tracing",
      homepage_url: "https://github.com/Hatch1fy/hatch-tracing",
      docs: [
        # The main page in the docs
        main: "HatchTracing",
        logo: "assets/logo.png",
        extras: ["README.md"]
      ]
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
      {:new_relic_agent, "~> 1.27"},
      {:opentelemetry_api, "~> 1.2"},
      {:opentelemetry_exporter, "~> 1.2"},

      # dev and test
      {:sobelow, "~> 0.12", only: [:dev, :test], runtime: false},
      {:mix_audit, "~> 2.0", only: [:dev, :test], runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end
end
