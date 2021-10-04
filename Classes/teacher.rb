require_relative 'person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unkown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher = Teacher.new('Mathematics', '34', 'John')

teacher.can_use_services?
