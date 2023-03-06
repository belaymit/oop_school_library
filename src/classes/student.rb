class Student < Person
  attr_accessor :classroom

  def initialize(age, parent_permission: true, name: 'Unknow', classroom: nil)
    super(age, parent_permission: parent_permission, name: name)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end