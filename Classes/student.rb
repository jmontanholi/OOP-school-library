require_relative 'person'
require_relative 'classroom'
require 'pry'

class Student < Person
  attr_reader :owner

  def initialize(age, name = 'Unkown', parent_permission = true)
    super(age, name, parent_permission)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end

student = Student.new(15, 'pedro', false)

student.play_hooky

classroom = Classroom.new

classroom.add_student(student)

binding.pry