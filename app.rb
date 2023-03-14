require_relative './src/classes/classrom'
require_relative './src/classes/student'
require_relative './src/classes/teacher'
require_relative './src/classes/book'
require_relative './src/classes/rental'

require_relative './src/modules/list'
require_relative './src/modules/create_people'
require_relative './src/modules/create_book'
require_relative './src/modules/create_rental'
require 'json'

class App
  attr_reader :books, :people, :rentals

  def get_books
    return [] unless File.exist?('books.json')
    book_items = File.read('books.json')
    book_list = JSON.parse(book_items)
    book_list.each{Book.new('title', 'author')}
    # return []
  end
  def get_people
  end

  def get_rentals
  end

  def initialize
    @people = get_people
    @books =  get_books
    @rentals = get_rentals
  end

  include List

  include CreatePeople

  include CreateBook

  include CreateRental

  def quit_app
    puts 'Thank you for using this App!'
    exit
  end
end
