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

  def read_books
    unless File.exist?('books.json')
      File.new('books.json', 'w')
      File.write('books.json', [])
      return []
    end
    book_items = File.read('books.json')
    book_list = JSON.parse(book_items)
    book_list.each { Book.new('title', 'author') }
  end

  def read_people
    unless File.exist?('people.json')
      File.new('people.json', 'w')
      File.write('people.json', [])
      return []
    end

    people_items = File.read('people.json')
    people_list = JSON.parse(people_items)
    people_list.each do |person|
      case person['type']
      when 'Student'
        Student.new(person['name'], person['age'], person['classroom'])
      when 'Teacher'
        Teacher.new(person['name'], person['age'], person['specialization'])
      end
    end
  end

  def read_rentals
    unless File.exist?('rental.json')
      File.new('rental.json', 'w')
      File.write('rental.json', [])
      return []
    end

    rental_items = File.read('rental.json')
    rental_list = JSON.parse(rental_items)
    rental_list.each { Rental.new('date', 'person', 'book') }
  end

  def initialize
    @people = read_people
    @books = read_books
    @rentals = read_rentals
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
