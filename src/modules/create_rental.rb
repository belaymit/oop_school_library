module CreateRental
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
end
