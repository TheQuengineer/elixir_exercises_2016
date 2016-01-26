defmodule CH1.SayingHelloTest do
  use ExUnit.Case

  import CH1.SayingHello

  test "Prompt gives correct message" do
     assert prompt("Freddy") == :ok
  end
end
