defmodule Size.Mixfile do
  use Mix.Project

  def project do
    [
      app: :size,
      version: "0.1.1",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Size",
      source_url: "https://github.com/jfcalvo/size"
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, "~> 0.16", only: :dev, runtime: false},
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
    ]
  end

  defp description do
  """
  Size provides a set of functions to facilitate working with file sizes.
  """
  end

  defp package do
    [
      name: :size,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["José Francisco Calvo"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/jfcalvo/size"}
    ]
  end
end
