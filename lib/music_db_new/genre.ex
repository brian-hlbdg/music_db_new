defmodule MusicDBNew.Genre do
  use Ecto.Schema
  alias MusicDBNew.Album

  schema "genres" do
    field :name
    timestamps()

    many_to_many :albums, Album, join_through: "albums_genres"
  end

  def changeset(genre, params \\ %{}) do
    genre
    |> Ecto.Changeset.cast(params, [:name])
    |> Ecto.Changeset.validate_required([:name])
  end

end
