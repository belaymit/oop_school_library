require_relative './spec_helper'

describe Decorator do
  decorator = Decorator.new(Nameable.new)

  it 'Shoul be an instance of Decorator' do
    expect(decorator).to be_an_instance_of(Decorator)
  end

  it 'Should respond to correct_name method' do
    expect(decorator).to respond_to(:correct_name)
  end
end
