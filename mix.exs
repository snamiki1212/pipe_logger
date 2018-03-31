defmodule PipeLogger.MixProject do
  use Mix.Project

  def project do
    [
      app: :pipe_logger,
      version: "0.1.0",
      elixir: "~> 1.3",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
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
      {:ex_doc, "~> 0.14", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp description() do
    "Logging via pipe, not stop."
  end

  defp package() do
    [
      maintainers: ["snamiki1212"],
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Shun Namiki"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/snamiki1212/pipe_logger"}
    ]
  end
end
