defmodule Pricing.Mixfile do
  use Mix.Project

  def project do
    [app: :pricing,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :tzdata]]
  end

  defp package do
    [ files: ["lib", "priv", "mix.exs", "README.md", "LICENSE.md"],
      maintainers: ["Paul Schoenfelder"],
      licenses: ["MIT"],
      links: %{ "GitHub": "https://github.com/arthurcolle/pricing" } ]
  end

  defp deps do
    [
      {:timex, "~> 1.0.0"}
    ]
  end
end
