class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def validate_name
    @name = @corrector.correct_name(@name)
  end
  
  def can_use_services?
    of_age? || @parent_permission
  end
end
