require_relative './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, parent_permission: true, name: 'Unknow', classroom: nil)
    super(age, parent_permission: parent_permission, name: name)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
