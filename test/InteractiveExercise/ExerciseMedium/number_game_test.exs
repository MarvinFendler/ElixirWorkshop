defmodule InteractiveExercise.ExerciseMedium.NumberGameTest do
  alias InteractiveExercise.ExerciseMedium.NumberGame
  use ExUnit.Case

  test "should initialize new game with secret number" do
    game = NumberGame.new()
    assert is_integer(game.secret_number)
    assert game.secret_number >= 1
    assert game.secret_number <= 100
  end

  test "should guess its too low" do
    game = %NumberGame{secret_number: 50}
    assert NumberGame.guess(game, 25) == "Die Zahl ist zu klein."
  end

  test "should guess its too high" do
    game = %NumberGame{secret_number: 25}
    assert NumberGame.guess(game, 50) == "Die Zahl ist zu groß."
  end

  test "should guess the numbers are equal" do
    game = %NumberGame{secret_number: 75}
    assert NumberGame.guess(game, 75) == "Herzlichen Glückwunsch! Du hast die Zahl erraten."
  end
end
