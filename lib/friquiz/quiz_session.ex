defmodule Friquiz.QuizSession do
  use Ecto.Schema
  import Ecto.Changeset

  schema "quiz_sessions" do
    field :sessionState, :string
    belongs_to :quiz, Friquiz.Quiz

    timestamps()
  end

  def changeset(quiz_session, attrs) do
    quiz_session
    |> cast(attrs, [:sessionState])
    |> validate_required([:sessionState])
  end
end
