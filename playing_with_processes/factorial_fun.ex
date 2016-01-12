defmodule TailRecursive do
  def factorial(number), do: factorial(number, 1)
  defp factorial(0, accumulator), do: accumulator
  defp factorial(number, accumulator), do: factorial(number - 1, accumulator * number)
end
