module CreateBook
  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    # @books << book unless @books.include?(book)
    puts @books.length
    puts 'Book has been created successfully'
  end
end
