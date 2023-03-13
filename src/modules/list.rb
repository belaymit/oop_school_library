module List
  def load_books
    # puts "\nNo books in the Library\n\n" unless @books.length.positive?
    # @books.each { |book| puts("Title: #{book.title}, Author: #{book.author}\n") }
    if @books.empty?
      puts 'No Book is Found, chose 4 to create book'
    else
      puts @books.count <= 1 ? "\n#{@books.count} Book\n" : "\n#{@books.count} Books \n"
      @books.each_with_index do |book, index|
        puts "#{index + 1} Title: '#{book.title}', Author: #{book.author}"
      end
    end
  end

  def load_people
    # puts "\nNo People found\n\n" unless @people.length.positive?
    # @people.each { |person| puts("  [#{person.class}] ID: #{person.id} Name: #{person.name} Age: #{person.age}") }
    if @people.empty?
      puts 'The people list is empty, chose 3 to add people'
    else
      puts @people.count <= 1 ? "\n#{@people.count} Person\n" : "\n#{@people.count} Persons \n"
      @people.each_with_index do |person, index|
        puts "#{index + 1}  Name: #{person.name}, ID: #{person.id} Age: #{person.age}"
      end
    end
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
