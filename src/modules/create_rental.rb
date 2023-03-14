module CreateRental
  def create_rental
    print "Select a book by number from the following list:\n"
    load_books
    prompt_user if @books.empty?
    book_index = gets.chomp.to_i - 1

    print "Select a person from the following list by number:\n"
    load_people
    prompt_user if @people.empty?
    person_index = gets.chomp.to_i - 1

    date = Time.now.strftime('%m/%d/%y')
    puts "Date:  #{date}"
    rental = Rental.new(date, @people[person_index], @books[book_index])
    @rentals << rental unless @rentals.include?(rental)
    puts('Rental has been created successfully')
  end
end
