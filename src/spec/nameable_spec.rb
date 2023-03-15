require_relative './spec_helper'

describe Nameable do
  new_nameable = Nameable.new

  describe '#initialize' do
    it 'Should return the nameale object' do
      expect(new_nameable).to be_an_instance_of(Nameable)
    end
  end

  describe '#correct_name' do
    it 'Should correct the name of person' do
      expect(new_nameable).to respond_to(:correct_name)
    end
  end
  describe '#correct_name' do
    it 'Should return NotImplementedError' do
      expect{new_nameable.correct_name}.to raise_error(NotImplementedError)
    end
  end
end
