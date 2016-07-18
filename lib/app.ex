defmodule ElixirOfOchoku.App do

  import Ecto.Query

  alias ElixirOfOchoku.Repo
  alias ElixirOfOchoku.Review

  def search_in_review(string) do
    search = "%#{string}%"
    Review
    |> where([r], ilike(r.review, ^search))
    |> Repo.all
  end

  def search_in_title(string) do
    if true do
    end
    search = "%#{string}%"
    Review
    |> where([r], ilike(r.name, ^search))
    |> Repo.all
  end

  def by_reviewer(reviewer) do
    Review
    |> where([r], r.reviewer == ^reviewer)
    |> Repo.all
  end

  def by_rating(rating) do
    Review
    |> where([r], r.rating >= ^rating)
    |> Repo.all
  end

end
