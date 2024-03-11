defmodule ExMon do
  # podemos criar um alias e chamar, como quisermos, outros modulos
  # alias ExMon.Player, as: Banana
  alias ExMon.{Game, Player}
  alias ExMon.Game.{Actions, Status}

  @computer_name "Robotinik"

  def create_player(name, move_rnd, move_avg, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:punch, :kick, :heat)
    |> Game.start(player)

    Status.print_round_message()
  end

  def make_move(move) do
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:ok, move}) do
    case move do
      :move_heal -> "realiza cure"
      move -> Actions.attack(move)
    end
  end
end
