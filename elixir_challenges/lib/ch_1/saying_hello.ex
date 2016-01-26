defmodule CH1.SayingHello do
  @moduledoc """
    The Saying Hello Exercise Making Use of Elixir IO
  """

@doc """
  Prompts the user for their name
  Entry Point To the SayingHello Application
    #Example
      CH1.SayingHello.prompt()
      iex> What is your Name?=>
      Joey
      iex> Hello, Joey nice to meet you!
"""
  def prompt() do
    name = IO.gets("What is your Name? => ")
    greet(name)
  end
@doc """
  Returns message greeting the user given
  `name` string
    #Example
      iex> CH1.SayingHello.prompt("Jim")
      iex> Hello, Jim nice to meet you!
"""
  def prompt(name) do
    greet(name)
  end

  defp greet(name) do
    IO.puts("Hello, " <> name <> " nice to meet you!")
  end
end
