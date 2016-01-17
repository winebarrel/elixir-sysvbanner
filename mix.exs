defmodule Banner.Mixfile do
  use Mix.Project

  def project do
    [app: :banner,
     version: "0.1.0",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     description: "It is Elixir sysvbanner port from https://github.com/uffejakobsen/sysvbanner.",
     package: [
       maintainers: ["Genki Sugawara"],
       licenses: ["MIT"],
       links: %{"GitHub" => "https://github.com/winebarrel/elixir-sysvbanner"}]]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: []]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end
end
