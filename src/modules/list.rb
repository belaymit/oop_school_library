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
    if @people.empty?
      puts 'No people found, Please choose 3 to add people'
    else
      puts @people.count <= 1 ? "\n#{@people.count} Person\n" : "\n#{@people.count} Persons \n"
      @people.each_with_index do |person, index|
        puts "#{index + 1}  Name: #{person.name}, ID: #{person.id} Age: #{person.age}"
      end
    end
  end

  def load_rentals
    # print 'Person ID: '
    # person_id = gets.chomp.to_i
    # person = @people.select { |per| per.id == person_id }
    # puts 'No Person found' unless person.length.positive?
    # puts 'Rentals: '
    # rentals.each { |rent| puts "Date: #{rent.date}, Book #{rent.book.title} by #{rent.person.name}" }

    # print "Enter person's ID: "
  #   person_id = gets.chomp.to_i
  #   if !@people.select { |per| per.id == person_id }
  #     puts "No rental found with ID: #{person_id}"
  #   elsif @rentals.empty?
  #     puts 'The rental list is empty'
  #   else
  #     puts "\nRentals #{@rentals.count}:\n"
  #     @rentals.each do |rental|
  #       puts "Date: #{rental.date}, Book: #{rental.title} by #{rental.author}" if rental['id'] == @people['person_id']
  #     end
  #   end
  # end
  # p('No Rentals') unless @rentals.length.positive?
  puts "\n #{@rentals.count} Rentals\n" unless @rentals.length.positive?
  rentals.each { |rent| puts("Date: #{rent.date} | #{rent.person.name} rented a #{rent.book.title}") }
end
end
