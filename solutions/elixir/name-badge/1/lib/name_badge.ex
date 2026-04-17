defmodule NameBadge do
  def print(id, name, department) do
    department = if department === nil, do: "OWNER", else: String.upcase(department)

    if id != nil do
      "[#{id}] - #{name} - #{String.upcase(department)}"
    else
      "#{name} - #{String.upcase(department)}"
    end
  end
end
