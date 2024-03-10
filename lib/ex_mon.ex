defmodule ExMon do
  # podemos criar um alias e chamar, como quisermos, outros modulos
  # alias ExMon.Player, as: Banana

  def create_player(name, move_rnd, move_avg, move_heal) do
    # Banana.build
    ExMon.Player.build(name, move_rnd, move_avg, move_heal)
  end
end
