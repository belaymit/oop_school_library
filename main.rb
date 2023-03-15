require_relative './app'

def menu
  puts "\n Welcome to School Library App! \n\n"
  puts "Please chose an option by entering a number: \n\n"
  options = {
    1 => 'list_of_books',
    2 => 'list_of_people',
    3 => 'create_a_person',
    4 => 'create_book',
    5 => 'create_rental',
    6 => 'list_all_rentals',
    7 => 'Exit'
  }
  puts options.map { |key, value| "#{key}. #{value}" }.join("\n")
end

def option_case(app, choice)
  case choice
  when 1
    app.load_books
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
  else
    puts '*** Incorect choice, chose a number between 1-7 ***'
  end
end

def main
  app = App.new
  choice = -1
  until choice == 7 || choice.zero?
    menu
    choice = gets.chomp.to_i
    option_case(app, choice) unless choice == 7
  end
  puts 'Thank you for using this app'
end
main
