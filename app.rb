require_relative './src/classes/classrom'
require_relative './src/classes/student'
require_relative './src/classes/teacher'
require_relative './src/classes/book'
require_relative './src/classes/rental'
require_relative './src/modules/user_choice'
require_relative './src/modules/list'
require_relative './src/modules/create_people'

class App
  attr_reader :books, :people, :rentals

  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def run
    prompt_user
  end

  include List

  include CreatePeople

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts @books.length
    puts 'Book has been created successfully'
  end

  def create_rental
    puts 'Select a book by number'
    @books.each_with_index { |book, i| puts(" #{i}) | Title: #{book.title} Author: #{book.author} |") }
    index = gets.chomp.to_i
    book = @books[index]

    puts 'Select a person by number (not ID)'
    @people.each_with_index do |person, i|
      puts("  #{i}) [#{person.class}] ID: #{person.id} Name: #{person.name} Age: #{person.age}")
    end
    index = gets.chomp.to_i
    person = @people[index]

    date = Time.now.strftime('%m/%d/%y')
    rental = Rental.new(date, book, person)
    @rentals.push(rental)
    person.add_rental(rental)
    book.add_rental(rental)
    puts "Date:  #{date}"
    puts('Book has been rented successfully')
  end

  def load_rentals
    print 'Person ID '
    person_id = gets.chomp.to_i
    person = @people.select { |per| per.id == person_id }
    puts 'No Person found' unless person.length.positive?
    puts 'Rentals: '
    rentals.each { |rent| puts "Date: #{rent.date}, Book #{rent.book.title} by #{rent.person.name}" }
  end
end
