defmodule TodoApi.Repo do
  use Ecto.Repo,
    otp_app: :todo_api,
    adapter: Ecto.Adapters.Postgres

  def init(_, config) do
    config =
      config
      |> Keyword.put(:username, "postgres")
      |> Keyword.put(:password, "password")
      |> Keyword.put(:database, "datahub")
      |> Keyword.put(:hostname, "postgres")
      |> Keyword.put(:port, 5432)

    {:ok, config}
  end
end
