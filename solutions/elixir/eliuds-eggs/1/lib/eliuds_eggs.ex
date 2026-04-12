defmodule EliudsEggs do
  @doc """
  Given the number, count the number of eggs.
  """
  @spec egg_count(number :: integer()) :: non_neg_integer()
  def egg_count(number) do
    count_ones(int_to_b(number))
  end

  defp int_to_b(0), do: []

  defp int_to_b(number) do
    remainder = Integer.mod(number, 2)
    int_to_b(div(number, 2)) ++ [remainder]
  end

  defp count_ones([head | tail]) do
    head + count_ones(tail)
  end

  defp count_ones([]), do: 0
end
