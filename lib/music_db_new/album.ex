defmodule MusicDBNew.Album do
  use Ecto.Schema
  alias MusicDBNew.{Artist, Track, Genre}

  schema "albums" do
    field :title
    timestamps()

    belongs_to :artist, Artist
    has_many :tracks, Track
    many_to_many :genres, Genre, join_through: "albums_genres"
  end

  def changeset(album, params \\ %{}) do
    album
    |> Ecto.Changeset.cast(params, [:title])
    |> Ecto.Changeset.validate_required([:title])
  end
end
