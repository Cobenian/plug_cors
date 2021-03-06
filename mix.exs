defmodule PlugCors.Mixfile do
  use Mix.Project

  def project do
    [ app: :plug_cors,
      version: "0.7.1",
      elixir: "~> 1.1-dev",
      description: description,
      package: package,
      deps: deps]
  end

  def application do
    [applications: [:logger, :plug, :cowboy]]
  end

  defp deps do
    [
      {:plug, github: "Cobenian/plug"}, # {:plug, ">= 0.10.0"}, 
      {:cowboy, "~> 1.0"},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.7.1", only: :dev},
    ]
  end

  defp description do
    """
    CORS Plug Middleware
    """
  end

  defp package do
    [
     files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     contributors: ["Bryan Joseph"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/bryanjos/plug_cors"}
    ]
  end
end
