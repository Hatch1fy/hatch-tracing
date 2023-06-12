defmodule HatchTracing.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/Hatch1fy/hatch-tracing"

  def project do
    [
      app: :hatch_tracing,
      version: @version,
      name: "HatchTracing",
      description: "Helps you to create OpenTelemetry spans with the least effort",
      source_url: @source_url,
      homepage_url: @source_url,
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

  defp docs do
    [
      main: "HatchTracing",
      logo: "assets/logo.jpg",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/ex_pipeline",
      extras: [
        "README.md",
        "CHANGELOG.md": [filename: "changelog", title: "Changelog"],
        LICENSE: [filename: "license", title: "License"]
      ]
    ]
  end

  defp package do
    [
      name: "hatch_tracing",
      organization: "hatch_ex",
      maintainers: ["Hatch"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
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
