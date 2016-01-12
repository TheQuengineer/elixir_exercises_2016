defmodule LinkThing do
  import :timer, only: [sleep: 1]

  def sad_function do
    sleep 500
    exit(:boom)
  end

  def run do
    spawn(LinkThing, :sad_function, [])
    receive do
      message -> IO.puts "MESSAGE RECIEVED: #{inspect(message)}"
    after 1000 ->
      IO.puts "Nothing happened as far as I am concerned"
    end
  end
end

LinkThing.run
