defmodule Lasagna do
  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(m) do
    expected_minutes_in_oven() - m
  end

  def preparation_time_in_minutes(l) do
    l * 2
  end

  def total_time_in_minutes(l, m) do
    preparation_time_in_minutes(l) + m
  end

  def alarm do
    "Ding!"
  end
end
