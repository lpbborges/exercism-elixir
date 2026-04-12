defmodule KitchenCalculator do
  def get_volume(volume_pair), do: elem(volume_pair, 1)

  def to_milliliter({:cup, vol}), do: to_milliliter(vol * 240)

  def to_milliliter({:fluid_ounce, vol}), do: to_milliliter(vol * 30)

  def to_milliliter({:teaspoon, vol}), do: to_milliliter(vol * 5)

  def to_milliliter({:tablespoon, vol}), do: to_milliliter(vol * 15)

  def to_milliliter({:milliliter, vol}), do: to_milliliter(vol)

  def to_milliliter(vol), do: {:milliliter, vol}

  def from_milliliter({:milliliter, vol}, :cup), do: {:cup, Float.floor(vol / 240, 2)}

  def from_milliliter({:milliliter, vol}, :fluid_ounce), do: {:fluid_ounce, Float.floor(vol / 30, 2)}

  def from_milliliter({:milliliter, vol}, :teaspoon), do: {:teaspoon, Float.floor(vol / 5, 2)}

  def from_milliliter({:milliliter, vol}, :tablespoon), do: {:tablespoon, Float.floor(vol / 15, 2)}

  def from_milliliter(volume_pair, :milliliter), do: volume_pair

  def convert(volume_pair, unit), do: from_milliliter(to_milliliter(volume_pair), unit)
end
