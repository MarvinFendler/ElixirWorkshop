ExUnit.start()

defmodule InteractiveExercise.ExerciseEasy.SimpleCalculatorTest do
  alias InteractiveExercise.ExerciseEasy.SimpleCalculator
  use ExUnit.Case

  test "should add 1+1" do
    assert SimpleCalculator.add(1, 1) == 2
  end

  test "should add 1+3" do
    assert SimpleCalculator.add(3, 1) == 4
  end

  test "should subtract 3-1" do
    assert SimpleCalculator.subtract(3, 1) == 2
  end

  test "should subtract 1-3" do
    assert SimpleCalculator.subtract(1, 3) == -2
  end

  test "should multiply 3-1" do
    assert SimpleCalculator.multiply(3, 1) == 3
  end

  test "should multiply 1-3" do
    assert SimpleCalculator.multiply(1, 3) == 3
  end

  test "should divide 3-1" do
    assert SimpleCalculator.divide(3, 1) == 3
  end

  test "should divide 1-3" do
    assert SimpleCalculator.divide(2, 4) == 0.5
  end

  test "should throw error when divide 0 and 0" do
    assert SimpleCalculator.divide(0, 0) == "Fehler: Division durch Null ist nicht erlaubt!"
  end
end
