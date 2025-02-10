1 # integer
1.0 # float
true # boolean
:atom # atom / symbol
"elixir" # string
[1, 2, 3] # list
{1, 2, 3} # tuple

Lesbarkeit und Klarheit: Elixir hat eine saubere und lesbare Syntax, die stark von Ruby inspiriert ist1. Dies erleichtert es Entwicklern, den Code zu verstehen und zu warten.

Pattern Matching: Elixir nutzt Pattern Matching intensiv, was den Code prägnanter und ausdrucksstärker macht2. Dies ermöglicht es, komplexe Datenstrukturen einfach zu zerlegen und zu verarbeiten.

Pipe Operator: Der Pipe Operator (|>) in Elixir ermöglicht eine klare und intuitive Verkettung von Funktionsaufrufen2. Dies verbessert die Lesbarkeit und macht den Code modularer.

Immutability: Elixir fördert die Unveränderlichkeit von Daten, was zu weniger Seiteneffekten und einem stabileren Code führt3. Dies ist besonders nützlich in parallelen und verteilten Systemen.

Metaprogrammierung: Elixir unterstützt Metaprogrammierung, was es Entwicklern ermöglicht, Code zu schreiben, der anderen Code generiert1. Dies kann die Produktivität erhöhen und wiederholte Aufgaben automatisieren.

Dokumentation: Elixir hat eingebaute Tools wie ExDoc, die es einfach machen, gut dokumentierten Code zu schreiben3. Dies fördert Best Practices und erleichtert die Zusammenarbeit im Team.

Pattern Matching:
defmodule Beispiel do
def match({:ok, result}) do
IO.puts("Ergebnis: #{result}")
end

def match({:error, reason}) do
IO.puts("Fehler: #{reason}")
end
end

Beispiel.match({:ok, "Erfolg"}) # Ausgabe: Ergebnis: Erfolg
Beispiel.match({:error, "Fehlgeschlagen"}) # Ausgabe: Fehler: Fehlgeschlagen

Pipe Operator:
defmodule Beispiel do
def verdoppeln(x), do: x \* 2
def addiere_fuenf(x), do: x + 5
end

result = 10
|> Beispiel.verdoppeln()
|> Beispiel.addiere_fuenf()

IO.puts(result) # Ausgabe: 25

Immutability:
defmodule Beispiel do
def unveraenderlich(x) do
x = x + 1
x
end
end

x = 10
y = Beispiel.unveraenderlich(x)

IO.puts(x) # Ausgabe: 10
IO.puts(y) # Ausgabe: 11

Metaprogrammierung:
defmodule Beispiel do
defmacro hallo_welt do
quote do
IO.puts("Hallo, Welt!")
end
end
end

defmodule Test do
require Beispiel
Beispiel.hallo_welt() # Ausgabe: Hallo, Welt!
end

Dokumentation:
defmodule Beispiel do
@moduledoc """
Dies ist ein Beispielmodul.
"""

@doc """
Addiert zwei Zahlen.

## Beispiele

      iex> Beispiel.addiere(2, 3)
      5

"""
def addiere(a, b), do: a + b
end
