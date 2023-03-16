module List
  def load_books
    if @books.empty?
      puts 'No Book is Found, chose 4 to create book'
    else
      puts @books.count <= 1 ? "\n#{@books.count} Book\n" : "\n#{@books.count} Books \n"
      @books.each_with_index do |book, index|
        puts "#{index + 1} Title: #{book['title']}, Author: #{book['author']}"
      end
    end
  end

  def load_people
    if @people.empty?
      puts 'No people found, Please choose 3 to add people'
    else
      puts @people.count <= 1 ? "\n#{@people.count} Person\n" : "\n#{@people.count} Persons \n"
      @people.each_with_index do |person, index|
        puts "#{index + 1}  Name: #{person['name']}, ID: #{person['id']} Age: #{person['age']}"
      end
    end
  end

  def load_rentals
    print "Enter a person's ID: "
    person_id = gets.chomp.to_i
    if !@people.find { |person| person['id'] == person_id }
      puts "No rental found with ID: #{person_id}"
    elsif @rentals.empty?
      puts 'The rental list is empty'
    else
      puts "\nRentals #{@rentals.count}:\n"
      @rentals.each do |rental|
        puts "Date: #{rental['date']}, Book: #{rental['title']} by #{rental['author']}" if rental['id'] == person_id
      end
    end
  end
end
