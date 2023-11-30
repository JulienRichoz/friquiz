defmodule Friquiz.Repo do
  use Ecto.Repo,
    otp_app: :friquiz,
    adapter: Ecto.Adapters.Postgres
end
