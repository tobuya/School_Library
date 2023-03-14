class Person
  def initialize(name = "Unknown", age, parent_permission = true)
    @id = Random.rand(1..1000000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  private

  def is_of_age?
    @age >= 18
  end

  def can_use_services?
    @parent_permission || is_of_age?
  end
end
