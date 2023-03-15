require 'json'

module CreateBook
  def persit_books(title, author)
    book_item = { 'title' => title, 'author' => author }
    book = File.read('books.json')
    @books = JSON.parse(book)
    @books << book_item
    File.write('books.json', JSON.pretty_generate(@books))
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books << book unless @books.include?(book)
    persit_books(title, author)
    puts 'Book has been created successfully'
  end
end
