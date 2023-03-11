require_relative './src/classes/classrom'
require_relative './src/classes/student'
require_relative './src/classes/teacher'
require_relative './src/classes/book'
require_relative './src/classes/rental'

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

  def loads_books
    puts "\nNo books in the Library\n\n" unless @books.length.positive?
    @books.each { |book| puts("Title: #{book.title}, Author: #{book.author}\n") }
  end

  def load_people
    puts "\nNo People found\n\n" unless @people.length.positive?
    @people.each { |person| puts("  [#{person.class}] ID: #{person.id} Name: #{person.name} Age: #{person.age}") }
  end

  def create_person
    # code to create a person (teacher or student)
    puts 'Create a person'
    print 'Do you want to create a Student (1) or a Teacher (2)?[Input a Number]: '
    person_type = gets.chomp.to_i
    if [1, 2].include? person_type
      print 'Name: '
      name = gets.chomp
      print 'Age: '
      age = gets.chomp.to_i
      case person_type
      when 1
        create_student(age, name)
      when 2
        create_teacher(age, name)
      end
    else
      puts 'Invalid'
    end
  end

  def create_student(age, name)
    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp.downcase
    case permission
    when :y
      parent_permission = true
    when :n
      parent_permission = false
    else
      puts 'Invalid option'
    end
    student = Student.new(name, age, parent_permission)
    @people.push(student)
    puts 'Student has been created successfully!'
  end

  def create_teacher(age, name)
    print 'Specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(name, age, specialization)
    @people.push(teacher)
    puts 'Teacher hase been created successfully!'
  end

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
