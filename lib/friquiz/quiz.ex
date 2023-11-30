defmodule Friquiz.Quiz do
  use Ecto.Schema
  import Ecto.Changeset

  schema "quizzes" do
    field :maxPlayer, :integer
    field :link, :string
    belongs_to :user, Friquiz.User

    timestamps()
  end

  def changeset(quiz, attrs) do
    quiz
    |> cast(attrs, [:maxPlayer, :link])
    |> validate_required([:maxPlayer, :link])
  end
end
