defmodule ElixirOfOchoku.Repo.Migrations.ReviewTable do
  use Ecto.Migration

  def change do
    create table(:review) do
      add :reviewer, :string
      add :name,    :string
      add :review,    :string
      add :rating, :integer

      timestamps
    end

    create index(:review, [:reviewer])
    create index(:review, [:name])
    create index(:review, [:rating])
  end

end
