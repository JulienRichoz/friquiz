defmodule Friquiz.UserScore do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user_scores" do
    field :score, :integer
    belongs_to :user, Friquiz.User
    belongs_to :quiz_session, Friquiz.QuizSession

    timestamps()
  end

  def changeset(user_score, attrs) do
    user_score
    |> cast(attrs, [:score])
    |> validate_required([:score])
  end
end
