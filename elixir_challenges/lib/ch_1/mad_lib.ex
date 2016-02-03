defmodule MadLib do
  @moduledoc """
  This exercise works as a mad lib game for the user.
  """

  def start do
    user_input = Enum.map(parts_of_speech, &prompt(&1))
    format(user_input)
  end

 def prompt(part_of_speech) do
   IO.gets("Enter a #{Atom.to_string(part_of_speech)}: ")
 end

 def format(input) do
   Enum.map(input, &String.strip(&1, ?\n))
   |> process
   |> build
   |> show
 end

 def process(answers) do
   Enum.zip(parts_of_speech, answers)
 end

 def build(answers) do
    Map.new(answers)
 end

 def show(map) do
   IO.puts("The #{map.noun} #{map.verb}ed over the #{map.adjective} test results while #{map.adverb}")
 end

  defp parts_of_speech do
    [
      :noun,
      :verb,
      :adjective,
      :adverb,
    ]
  end
end
