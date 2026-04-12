defmodule HighScore do
  @initial_score 0
  
  def new(), do: Map.new()

  def add_player(scores, name, score \\ 0), do: Map.put_new(scores, name, score)

  defp remove_player(_), do: new()

  def remove_player(scores, name), do: Map.delete(scores, name)

  def reset_score(scores, name), do: Map.put(scores, name, @initial_score)
  
  def update_score(scores, name, score \\ 0), do: Map.update(scores, name, score, fn current_score -> current_score + score end)

  def get_players(scores), do: Map.keys(scores)
end
