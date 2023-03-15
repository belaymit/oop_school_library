require_relative './spec_helper'

describe Book do
  new_book = Book.new('Listen to Your Heart: The London Adventure', 'Ruskin Bond')

  it 'Should be an instance of Boook' do
    expect(new_book).to be_an_instance_of(Book)
  end

  it 'Should have an author "Ruskin Bond"' do
    expect(new_book.author).to eq('Ruskin Bond')
  end
  it 'Should have title "Listen to Your Heart: The London Adventure"' do
    expect(new_book.title).to eq('Listen to Your Heart: The London Adventure')
  end
  it 'Should have rentals' do
    expect(new_book.rentals).to be_an_instance_of(Array)
  end
  it 'Should have a method to add rentals' do
    expect(new_book).to respond_to(:add_rental)
  end
end
