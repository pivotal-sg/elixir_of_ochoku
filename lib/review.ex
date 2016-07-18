defmodule ElixirOfOchoku.Review do
  use Ecto.Schema

  schema "review" do
    field :reviewer
    field :name
    field :review
    field :rating, :integer
  end
end
