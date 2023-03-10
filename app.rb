require_relative './classes/classroom'
require_relative './classes/student'
require_relative './classes/teacher'
require_relative './classes/book'
require_relative './classes/rental'

class App
  attr_reader :books, :people, :rentals

  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def loads_books
    # code to list all books
  end

  def load_people
    # code to list all people
  end

  def create_person(name, age, role)
    # code to create a person (teacher or student)
  end

  def create_book(title, author, isbn)
    # code to create a book
  end

  def create_rental(book_id, person_id, rental_date, return_date)
    # code to create a rental
  end

  def load_rentals(person_id)
    # code to list all rentals for a given person id
  end
end
