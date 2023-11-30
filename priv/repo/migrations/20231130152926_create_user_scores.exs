defmodule Friquiz.Repo.Migrations.CreateUserScores do
  use Ecto.Migration

  def change do
    create table(:user_scores, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :score, :integer

      add :user_id, references(:users, type: :uuid, on_delete: :nothing)
      add :quiz_session_id, references(:quiz_sessions, type: :uuid, on_delete: :nothing)

      timestamps()
    end
  end
end
