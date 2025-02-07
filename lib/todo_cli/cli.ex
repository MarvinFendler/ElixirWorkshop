# This line defines a new module named TodoCli.Cli.
defmodule TodoCli.Cli do
  # These lines create aliases for the TodoCli.Todo module, allowing you to refer to it simply as Todo.
  alias TodoCli.Todo
  alias Todo

  @doc "Startet die CLI und verarbeitet Benutzerbefehle."
  def start() do
    todo = Todo.new()
    loop(todo)
  end

  defp loop(todo) do
    IO.puts("Befehle: add <task>, list, delete <index>, quit")
    command = IO.gets("> ") |> String.trim()

    # This block handles different commands (add, list, delete, quit) and updates the todo list accordingly.
    new_todo =
      case String.split(command) do
        ["add" | task] ->
          task = Enum.join(task, " ")
          todo = Todo.add_task(todo, task)
          IO.puts("Aufgabe hinzugefügt.")
          todo

        ["list"] ->
          IO.puts("Aufgaben:")

          Enum.with_index(Todo.list_tasks(todo))
          |> Enum.each(fn {task, index} -> IO.puts("#{index + 1}. #{task}") end)

          todo

        ["delete", index] ->
          index = String.to_integer(index) - 1
          todo = Todo.delete_task(todo, index)
          IO.puts("Aufgabe gelöscht.")
          todo

        ["quit"] ->
          IO.puts("Programm beendet.")
          :ok
          System.halt(0)

        _ ->
          IO.puts("Ungültiger Befehl.")
          todo
      end

    loop(new_todo)
  end
end
