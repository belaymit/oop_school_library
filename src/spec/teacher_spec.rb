require_relative './spec_helper'

describe Teacher do
  new_teacher = Teacher.new('Peter', 32, 'Physics')

  it 'Should be an instance of Teacher class' do
    expect(new_teacher).to be_an_instance_of(Teacher)
  end

  it 'Should return true if a Teacher can use service' do
    expect(new_teacher.can_use_services?).to be true
  end

  it 'The specialization should be "Physics"' do
    expect(new_teacher.specialization).to eq('Physics')
  end

  it 'The name of the teacher should be Peter' do
    expect(new_teacher.name).to eq('Peter')
  end

  it 'Should have renatls instance' do
    expect(new_teacher.rentals).to be_an_instance_of(Array)
  end
end
