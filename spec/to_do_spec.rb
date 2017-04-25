require('rspec')
require('to_do')

describe(Task) do
  before() do
    Task.clear()
  end

  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new("wash the car")
      expect(test_task.description()).to(eq("wash the car"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task =Task.new("do the dishes")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end
  describe(".clear") do
    it("empties out all of the saved tasks") do
      Task.new("do the dishes")
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end
end
