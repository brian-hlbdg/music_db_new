import Config

config :music_db_new,
  ecto_repos: [MusicDBNew.Repo]
config :music_db_new, MusicDBNew.Repo,
  database: "music_db_new_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
