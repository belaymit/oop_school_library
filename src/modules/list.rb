module List
  def load_books
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
    puts "\n #{@rentals.count} Rentals\n" unless @rentals.length.positive?
    rentals.each { |rent| puts("Date: #{rent.date} | #{rent.person.name} rented a #{rent.book.title}") }
  end
end
