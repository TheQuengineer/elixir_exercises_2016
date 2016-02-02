defmodule CH1.PrintingQuotes do
  @moduledoc """
  This Module performs Exercise # 3 from the 57 programming exercises book.
  It makes use of using the
  """

  @doc """
  Starts Exercise quoting exercise
  """
  def prompt do
    entered_quote = IO.gets("What is the quote? > ")
    who_said_it = IO.gets("Who said it? > ")
    generate_message(entered_quote, who_said_it)
  end

  defp generate_message(entered_quote, who_said_it) do
    message = String.strip(entered_quote, ?\n)
    IO.puts(who_said_it <> " says," <> inspect(message))
  end
end
