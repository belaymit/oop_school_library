require 'json'

module CreateRental
  def persist_rental(date, author, title, name, id)
    rent_items = {'date'=>date, 'author'=>author, 'title'=>title, 'name'=>name, 'id'=>id}
    rental_list = File.read('rental.json')
    @rentals = JSON.parse(rental_list)
    @rentals << rent_items
    File.write('rental.json', JSON.pretty_generate(@rentals))
  end

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
    persist_rental(date, rental.book['author'], rental.book['title'], rental.person['name'], rental.person['id'])
    puts('Rental has been created successfully')
  end
end
