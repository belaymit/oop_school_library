require_relative './spec_helper'

describe Student do
  new_student = Student.new('Varys', 38, 'C1')

  it 'Should be an instance of Student' do
    expect(new_student).to be_an_instance_of(Student)
  end

  it 'Should have a method that return the classroom labeled "C1"' do
    expect(new_student.classroom).to eq('C1')
  end

  it 'Should contain a method play_hooky that returns symbols' do
    expect(new_student).to respond_to(:play_hooky)
  end
end
