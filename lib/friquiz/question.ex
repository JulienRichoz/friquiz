defmodule Friquiz.Question do
  use Ecto.Schema
  import Ecto.Changeset

  schema "questions" do
    field :questionType, :string
    field :content, :string
    field :correctAnswer, :string
    field :falseAnswers, {:array, :string}
    field :timer, :integer
    belongs_to :quiz, Friquiz.Quiz

    timestamps()
  end

  def changeset(question, attrs) do
    question
    |> cast(attrs, [:questionType, :content, :correctAnswer, :falseAnswers, :timer])
    |> validate_required([:questionType, :content, :correctAnswer, :falseAnswers, :timer])
  end
end
