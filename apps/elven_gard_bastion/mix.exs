defmodule ElvenGardBastion.MixProject do
  use Mix.Project

  def project do
    [
      app: :elven_gard_bastion,
      version: "2.0.0-beta.1",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {ElvenGardBastion.Application, []}
    ]
  end

  defp deps do
    [
      {:gen_state_machine, "~> 2.0"},
      {:espec, "~> 1.6.3", only: :test},
      {:mock, "~> 0.3.0", only: :test},
      {:ranch, "~> 1.5"},
      {:libcluster, "~> 3.0"}
    ]
  end
end
