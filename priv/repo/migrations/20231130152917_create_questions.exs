defmodule Friquiz.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :questionType, :string
      add :content, :text
      add :correctAnswer, :string
      add :falseAnswers, {:array, :string}
      add :timer, :integer

      # Clé étrangère vers la table quizzes
      add :quiz_id, references(:quizzes, type: :uuid, on_delete: :nothing)

      timestamps()
    end
  end
end
