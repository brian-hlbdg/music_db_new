defmodule MusicDBNew.Repo do
  use Ecto.Repo,
    otp_app: :music_db_new,
    adapter: Ecto.Adapters.Postgres
end
