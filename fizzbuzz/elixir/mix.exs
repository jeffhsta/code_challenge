defmodule Fizzbuzz.MixProject do
  use Mix.Project

  def project do
    [
      app: :fizzbuzz,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application, do: [extra_applications: [:logger]]

  defp deps do
    [
      {:credo, "~> 1.0"}
    ]
  end
end
