require_relative 'person'

class Student < Person
  def initialize(classroom, age, name = 'Unkown', parent_permission = true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end

student = Student.new('A1', 15, 'pedro', false)

student.play_hooky
