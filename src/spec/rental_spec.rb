require_relative './spec_helper'
describe Rental do
  new_rental = Rental.new('2023-03-14', 'Mata', 'Naked Triangle')

  it 'Shoould be an instance of Rental' do
    expect(new_rental).to be_an_instance_of(Rental)
  end
  it 'The date when the book is rented should be "2023-03-14"' do
    expect(new_rental.date).to eq('2023-03-14')
  end
  it 'The name of a person who rented the book should be "Mata"' do
    expect(new_rental.person).to eq('Mata')
  end
  it 'The title of the book should be "Naked Triangle"' do
    expect(new_rental.book).to eq('Naked Triangle')
  end
end
