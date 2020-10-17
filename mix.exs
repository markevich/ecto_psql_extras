defmodule EctoPSQLExtras.Mixfile do
  use Mix.Project
  @github_url "https://github.com/pawurb/ecto_psql_extras"
  @version "0.2.0"

  def project do
    [
      app: :ecto_psql_extras,
      version: @version,
      elixir: "~> 1.5",
      escript: [main_module: EctoPSQLExtras],
      description: description(),
      deps: deps(),
      package: package(),
      source_url: @github_url
    ]
  end

  def deps() do
    [
      {:table_rex, "~> 3.0.0"},
      {:ecto_sql, "~> 3.4"},
      {:postgrex, ">= 0.0.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description() do
    """
    Ecto PostgreSQL database performance insights. Locks, index usage, buffer cache hit ratios, vacuum stats and more.
    """
  end

  defp package() do
    [
      maintainers: ["Pawel Urbanek"],
      licenses: ["MIT"],
      links: %{"GitHub" => @github_url}
    ]
  end
end
