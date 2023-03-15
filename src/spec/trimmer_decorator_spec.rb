require_relative './spec_helper'

describe TrimmerDecorator do
  person = Person.new('carlosososososos', 98)
  trim_decorator = TrimmerDecorator.new(person)

  it 'Shoul be an instance of TrimmerDecorator' do
    expect(trim_decorator).to be_an_instance_of(TrimmerDecorator)
  end

  it 'Should return 10 or less characters of name' do
    expect(trim_decorator.correct_name).to eq('carlososos')
  end
end
