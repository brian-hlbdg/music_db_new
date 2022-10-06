defmodule MusicDBNew.Artist do
  use Ecto.Schema

  schema "artists" do
    field :name
    timestamps()

    has_many :albums, MusicDBNew.Album
  end

  def changeset(artist, params \\ %{}) do
    artist
    |> Ecto.Changeset.cast(params, [:name])
    |> Ecto.Changeset.validate_required([:name])
  end

end
