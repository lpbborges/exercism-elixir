defmodule RPG.CharacterSheet do
  def welcome() do
    IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  def ask_name() do
    ask("What is your character's name?")
  end

  def ask_class() do
    ask("What is your character's class?")
  end

  def ask_level() do
    String.to_integer(ask("What is your character's level?"))
  end

  def run() do
    welcome()
    character = %{name: ask_name(), class: ask_class(), level: ask_level()}
    IO.write("Your character: ")
    IO.inspect(character)
  end

  defp ask(message) do
    String.trim(IO.gets("#{message}\n"))
  end
end
