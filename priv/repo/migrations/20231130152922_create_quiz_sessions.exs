defmodule Friquiz.Repo.Migrations.CreateQuizSessions do
  use Ecto.Migration

  def change do
    create table(:quiz_sessions, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :sessionState, :string

      # Clé étrangère vers la table quizzes
      add :quiz_id, references(:quizzes, type: :uuid, on_delete: :nothing)

      timestamps()
    end
  end
end
