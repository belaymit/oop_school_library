require_relative './spec_helper'

describe CapitalizeDecorator do
  person = Person.new('carlos', 98)
  cap_decorator = CapitalizeDecorator.new(person)

  it 'Shoul be an instance of  CapitalizeDecorator' do
    expect(cap_decorator).to be_an_instance_of(CapitalizeDecorator)
  end

  it 'Should return capitalized name "Carlos"' do
    expect(cap_decorator.correct_name).to eq('Carlos')
  end
end
