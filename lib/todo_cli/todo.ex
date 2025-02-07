# definiert ein neues Modul namens Todo, Module in Elixier bezeichnen eine Sammlung von Funktionen und Datenstruktruren
defmodule TodoCli.Todo do
  alias TodoCli.Todo
  # definiert eine struktur mit dem Feld Tasks welches hier einem leeren Array zugewiesen ist
  defstruct tasks: []

  # eine Funktion namens new die eine neue, leere, TodoListe erstellt/ in
  def new() do
    %Todo{}
  end

  # here is a matching pattern cunstruct used in the function definition
  ## that means:
  ## %Todo{tasks: tasks}: This part matches a struct of type Todo and binds its tasks field to the variable tasks.
  ## = todo: This part binds the entire Todo struct to the variable todo.
  ## task: This is the new task to be added.
  # So, add_task(%Todo{tasks: tasks} = todo, task) means that the function add_task takes two arguments: a Todo struct and a task. Inside the function, you can access the tasks field of the Todo struct and the entire Todo struct itself.
  def add_task(%Todo{tasks: tasks} = todo, task) do
    # %Todo{}: This indicates that we are working with a struct of type Todo.
    # todo: This is the existing TodoList struct that we want to update.
    # | tasks: tasks ++ [task]: This part updates the tasks field of the TodoList struct. It takes the current list of tasks (tasks) and appends the new task to it using the ++ operator.
    # So, %TodoList{todo | tasks: tasks ++ [task]} creates a new TodoList struct with the same fields as todo, but with the tasks field updated to include the new task.
    %Todo{todo | tasks: tasks ++ [task]}
  end

  # def list_tasks(%Todo{tasks: tasks}) do: This defines a function named list_tasks that takes one argument. The argument is expected to be a Todo struct, and it uses pattern matching to extract the tasks field from the struct and bind it to the variable tasks.
  def list_tasks(%Todo{tasks: tasks}) do
    # tasks: This is the body of the function. It simply returns the value of the tasks variable, which contains the list of tasks extracted from the Todo struct.
    tasks
  end

  # %Todo{tasks: tasks} = todo: A %Todo{} structure that contains a list of tasks (tasks).
  # index: An index that must be an integer (is_integer(index)) and greater than or equal to 0 (index >= 0).
  def delete_task(%Todo{tasks: tasks} = todo, index) when is_integer(index) and index >= 0 do
    if index < length(tasks) do
      # delete the task
      tasks = List.delete_at(tasks, index)
      # Creates a new %Todo{} structure with the updated list of tasks
      %Todo{todo | tasks: tasks}
    else
      IO.puts("Ungültiger Index: #{index}")
      todo
    end
  end
end
