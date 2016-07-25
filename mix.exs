defmodule Curve448.Mixfile do
  use Mix.Project

  def project do
    [app: :curve448,
     version: "0.1.0",
     elixir: "~> 1.2",
     name: "Curve448",
     source_url: "https://github.com/mwmiller/curve448_ex",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    []
  end

  defp deps do
    [
      {:earmark, "~> 0.2", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev},
      {:power_assert, "~> 0.0.8", only: :test},
    ]
  end

  defp description do
    """
    Curve448 Diffie-Hellman functions
    """
  end

  defp package do
    [
     files: ["lib", "mix.exs", "README*", "LICENSE*", ],
     maintainers: ["Matt Miller"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/mwmiller/curve448_ex",}
    ]
  end

end
