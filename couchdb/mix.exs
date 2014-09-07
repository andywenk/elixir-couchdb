defmodule Couchdb.Mixfile do
  use Mix.Project

  def project do
    [app: :couchdb,
     version: "0.0.1",
     elixir: "~> 0.15.1",
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:hackney, "~> 0.13.1"},
      {:jsex, "~> 2.0.0"},
    ]
  end

  defp description do
    """
    The couchdb package is a client for Apache CouchDB (http://apache.couchdb.org)
    """
  end

  defp package do
    [# These are the default files included in the package
     files: ["config", "lib", "mix.exs", "README*", "LICENSE*", ],
     contributors: ["Andy Wenk", "Alexander Shorin"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/andywenk/elixir-couchdb",
              "Docs" => "https://github.com/andywenk/elixir-couchdb"}]
  end
end
