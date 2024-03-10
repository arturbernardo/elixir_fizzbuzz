defmodule ExMon.Game.Status do
    alias ExMon.Game
    def print_round_message() do
        IO.puts("\n========== Game Started! ==========\n")

        # inspect imprime structs
        IO.inspect(Game.info())
        IO.puts("---------------------------")
    end
end