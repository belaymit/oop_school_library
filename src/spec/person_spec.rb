require_relative './spec_helper'

describe Person do
  new_person = Person.new('Juan', 29)

  it 'Should be an instance of Person' do
    expect(new_person).to be_an_instance_of(Person)
  end

  it 'Should have name "Juan"' do
    expect(new_person.name).to eq('Juan')
  end

  it 'Should have age 29' do
    expect(new_person.age).to eq(29)
  end

  it 'correct_name method should return Juan' do
    expect(new_person.correct_name).to eq('Juan')
  end

  it 'can_use_service should return true' do
    expect(new_person.can_use_services?).to be true
  end

  it 'of_age should return true if age > 18' do
    expect(new_person.send(:of_age?)).to be true
  end
end
