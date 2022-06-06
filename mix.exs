defmodule RunTime.MixProject do
  use Mix.Project

  def project do
    [
      app: :run_time,
      version: "0.1.0",
      elixir: "~> 1.14-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: [
        demo: [
          include_executables_for: [:unix],
          config_providers: [
            {Toml.Provider,
             [
               path: "/Users/robertboone/run_time/runtime.toml"
             ]}
          ]
        ]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {RunTime.Application, []},
      releases: [
        demo: [
          include_executables_for: [:unix],
          config_providers: [
            {Toml.Provider,
             [
               path: "/Users/robertboone/run_time/runtime.toml"
             ]}
          ]
        ]
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:toml, "~> 0.6.2"}
    ]
  end
end
