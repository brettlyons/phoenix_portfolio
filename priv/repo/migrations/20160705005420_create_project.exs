defmodule PhoenixPortfolio.Repo.Migrations.CreateProject do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :name, :string
      add :url, :string
      add :description, :text
      add :thumbnailUrl, :string
      add :priority, :integer

      timestamps()
    end

  end
end
