defmodule Friquiz.Repo.Migrations.CreatePlayerAnswers do
  use Ecto.Migration

  def change do
    create table(:player_answers, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :givenAnswer, :string
      add :isCorrect, :boolean
      add :timestamp, :naive_datetime

      add :user_id, references(:users, type: :uuid, on_delete: :nothing)
      add :question_id, references(:questions, type: :uuid, on_delete: :nothing)
      add :quiz_session_id, references(:quiz_sessions, type: :uuid, on_delete: :nothing)

      timestamps()
    end
  end
end
