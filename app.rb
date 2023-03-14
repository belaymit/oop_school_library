require_relative './src/classes/classrom'
require_relative './src/classes/student'
require_relative './src/classes/teacher'
require_relative './src/classes/book'
require_relative './src/classes/rental'

require_relative './src/modules/list'
require_relative './src/modules/create_people'
require_relative './src/modules/create_book'
require_relative './src/modules/create_rental'

class App
  attr_reader :books, :people, :rentals

  def initialize
    @people = []
    @books = []
    @rentals = []
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
