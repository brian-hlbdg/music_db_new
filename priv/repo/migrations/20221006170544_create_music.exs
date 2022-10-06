defmodule MusicDBNew.Repo.Migrations.CreateMusic do
  use Ecto.Migration

  def change do
    create table(:music) do
      add :title, :string, null: false
      add :artist_id, references(:artists, on_delete: :nothing)
      add :album_id, references(:albums, on_delete: :nothing)
      add :genre_id, references(:genres, on_delete: :nothing)
      add :favorite, :boolean, null: false, default: false
      timestamps()
    end
    create index(:music, [:artist_id])
    create index(:music, [:album_id])
    create index(:music, [:genre_id])
  end
end
