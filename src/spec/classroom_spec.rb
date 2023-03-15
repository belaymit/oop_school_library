require_relative './spec_helper'

describe Classroom do
  new_class_room = Classroom.new('C1')

  it 'Should be an instantce of Classrom' do
    expect(new_class_room).to be_an_instance_of(Classroom)
  end

  it 'Should have a label equal to "C1"' do
    expect(new_class_room.label).to eq('C1')
  end

  it 'Should have students instance' do
    expect(new_class_room.students).to be_an_instance_of(Array)
  end

  it 'Should have a method to add students' do
    expect(new_class_room).to respond_to(:add_student)
  end
end
