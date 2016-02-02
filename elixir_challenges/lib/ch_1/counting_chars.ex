defmodule CH1.CountingChars do
  @moduledoc """
    This module prompts a user to enter
    any string and returns a the amount of
    chars in the string.
  """
  @message "You didn't enter anything, Please Try again!"
@doc """
  Prompts the user to enter the string.
  #Example
    iex> CH1.CountingChars.prompt()
    iex> What is the input string? > Bill
    iex> Bill has 4 characters

  #Example 2
    iex> CH1.CountingChars.prompt()
    iex> What is the input string? > " "
    iex> You didn't enter anything, Please Try again!
"""
  def prompt() do
    answer = IO.gets("What is the input string > ")
    verify_answer(answer)
  end

  defp verify_answer(answer) when not is_bitstring(answer)  do
     IO.puts("You have entered an Invalid answer. Try again!")
     prompt()
  end

  defp verify_answer(" ")  do
    IO.puts(@message)
    prompt()
  end

  defp verify_answer("\n") do
    IO.puts(@message)
    prompt()
  end

  defp verify_answer(answer) when is_bitstring(answer) do
    prepared_answer = String.strip(answer, ?\n)
    compute_char_count(prepared_answer)
  end

  defp compute_char_count(answer) do
    IO.puts("#{IO.inspect(answer)} has #{IO.inspect(String.length(answer))} characters")
  end
end
