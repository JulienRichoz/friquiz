defmodule Friquiz.PlayerAnswer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "player_answers" do
    field :id, Ecto.UUID, autogenerate: true, primary_key: true
    field :givenAnswer, :string
    field :isCorrect, :boolean
    field :timestamp, :naive_datetime
    belongs_to :user, Friquiz.User
    belongs_to :question, Friquiz.Question
    belongs_to :quiz_session, Friquiz.QuizSession

    timestamps()
  end

  def changeset(player_answer, attrs) do
    player_answer
    |> cast(attrs, [:givenAnswer, :isCorrect, :timestamp])
    |> validate_required([:givenAnswer, :isCorrect, :timestamp])
  end
end
