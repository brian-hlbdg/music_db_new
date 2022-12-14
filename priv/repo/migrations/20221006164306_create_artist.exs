defmodule MusicDBNew.Repo.Migrations.CreateArtist do
  use Ecto.Migration

  def change do
    create table(:artists) do
      add :name, :string, null: false
      timestamps null: true
    end
    create index(:artists, [:name])
  end
end
