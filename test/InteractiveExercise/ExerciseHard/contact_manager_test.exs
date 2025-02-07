defmodule InteractiveExercise.ExerciseHard.ContactManagerTest do
  alias InteractiveExercise.ExerciseHard.ContactManager
  use ExUnit.Case

  test "should create an empty contact manager" do
    manager = ContactManager.new()
    assert manager.contacts == []
  end

  test "should add a new contact to the manager" do
    manager = ContactManager.new()
    manager = ContactManager.add_contact(manager, "Heinz")
    assert manager.contacts == ["Heinz"]
  end

  test "should remove an existing contact from the manager" do
    manager = ContactManager.new()
    manager = ContactManager.add_contact(manager, "Heinz")
    manager = ContactManager.add_contact(manager, "Heiko")
    manager = ContactManager.add_contact(manager, "Holger")
    assert manager.contacts == ["Heinz", "Heiko", "Holger"]
    manager = ContactManager.remove_contact(manager.contacts, "Heinz")
    assert manager.contacts == ["Heiko", "Holger"]
  end

  test "should list all existing contacts" do
    manager = ContactManager.new()
    manager = ContactManager.add_contact(manager, "Heinz")
    manager = ContactManager.add_contact(manager, "Lana")
    manager = ContactManager.add_contact(manager, "Lisa")

    assert ContactManager.list_contacts(manager) == ["Heinz", "Lana", "Lisa"]
  end
end
