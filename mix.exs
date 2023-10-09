defmodule CredoFormatter.MixProject do
  use Mix.Project

  def project do
    [
      app: :credo_formatter,
      version: "0.0.1",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/fabiankrol/credo_formatter"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Credo checks based formatter"
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/fabiankrol/credo_formatter"}
    ]
  end
end
