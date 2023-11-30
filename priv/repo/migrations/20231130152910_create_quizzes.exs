defmodule Friquiz.Repo.Migrations.CreateQuizzes do
  use Ecto.Migration

  def change do
    create table(:quizzes) do
      add :id, :uuid, primary_key: true
      add :maxPlayer, :integer
      add :link, :string

      # Ajoute une clé étrangère vers la table users.
      add :user_id, references(:users, type: :uuid, on_delete: :nothing)

      timestamps()
    end
  end
end
