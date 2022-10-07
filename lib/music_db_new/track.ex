defmodule MusicDBNew.Track do
  use Ecto.Schema
  alias MusicDBNew.Album

  schema "tracks" do
    field :title, :string
    field :duration, :integer
    field :index, :integer
    field :number_of_plays, :integer
    field :favorite, :boolean
    timestamps()

    belongs_to :album, Album
  end

  def changeset(track, params \\ %{}) do
    track
    |> Ecto.Changeset.cast(params, [:title, :duration, :index, :number_of_plays, :favorite])
    |> Ecto.Changeset.validate_required([:title, :duration, :index])
  end

end
