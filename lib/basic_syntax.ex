defmodule BasicSyntax do
  # Alias: Ermöglicht es, einen kürzeren oder ein eigenen Namen für ein Modul zu verwenden.
  alias IO, as: Console

  # Structs: Definiert eine Struktur namens Person mit den Feldern name und age.
  defmodule Person do
    defstruct name: "", age: 0
  end

  # Listen: Erstellt eine Liste und gibt jedes Element mit Enum.each aus.
  def list_example do
    list = [1, 2, 3, 4, 5]
    Enum.each(list, fn x -> Console.puts("Element: #{x}") end)
  end

  # Enum.each: Iteriert über eine Range von 1 bis 5 und gibt jedes Element aus.
  def enum_each_example do
    Enum.each(1..5, fn x -> Console.puts("Number: #{x}") end)
  end

  # Loop: Eine rekursive Funktion, die eine Schleife simuliert.
  def loop_example(0), do: :ok

  def loop_example(n) do
    Console.puts("Loop count: #{n}")
    loop_example(n - 1)
  end

  # cond: Eine bedingte Anweisung, die mehrere Bedingungen überprüft.
  def cond_example(x) do
    cond do
      x < 0 -> "Negative"
      x == 0 -> "Zero"
      x > 0 -> "Positive"
    end
  end

  # if: Eine einfache bedingte Anweisung.
  def if_example(x) do
    if x > 0 do
      "Positive"
    else
      "Non-positive"
    end
  end

  # case: Eine Fallunterscheidung, die verschiedene Werte überprüft.
  def case_example(x) do
    case x do
      0 -> "Zero"
      1 -> "One"
      _ -> "Other"
    end
  end

  # Map: Erstellt eine Map und gibt den Wert für einen bestimmten Schlüssel aus.
  def map_example do
    map = %{"key1" => "value1", "key2" => "value2"}
    Console.puts("Map value for key1: #{map["key1"]}")
  end
end

BasicSyntax.list_example()
BasicSyntax.enum_each_example()
BasicSyntax.loop_example(3)
IO.puts(BasicSyntax.cond_example(3))
IO.puts(BasicSyntax.cond_example(-3))
IO.puts(BasicSyntax.case_example(0))
BasicSyntax.map_example()

# -> zum ausführen 'task run-basic-syntax'
