require_relative './app'

def menu
  puts('-------------------------------------')
  puts('Please enter your choice: ')
  print('-------------------------------------')
  print('
    1 - List all books
    2 - List all people
    3 - Create a person
    4 - Create a book
    5 - Create a rental
    6 - List all rentals for a given person id
    7 - Exit
    ')
end

# rubocop:disable Style/CyclomaticComplexity
def run_app(app, method)
  case method
  when 1
    app.loads_books
  when 2
    app.load_people
  when 3
    app.create_person
  when 4
    app.create_book
  when 5
    app.create_rental
  when 6
    app.load_rentals
  when 7
    puts 'Thank you for using my app'
    abort
  else
    puts 'Please enter a valid option'
  end
end

# rubocop:enable Style/CyclomaticComplexity
def main
  app = App.new
  # options = {
  #   1 => 'list_of_books',
  #   2 => 'list_of_people',
  #   3 => 'create_a_person',
  #   4 => 'create_book',
  #   5 => 'create_rental',
  #   6 => 'list_all_rentals_for_person',
  #   7 => 'exit'
  # }
  choice = -1
  until choice == 7
    menu
    choice = gets.chomp.to_i
    run_app(app, choice)
  end
end

puts 'Welcome to School Library App!'
main
