require '../app'
module List
def loads_books
  puts "\nNo books in the Library\n\n" unless @books.length.positive?
  @books.each { |book| puts("Title: #{book.title}, Author: #{book.author}\n") }
end

def load_people
  puts "\nNo People found\n\n" unless @people.length.positive?
  @people.each { |person| puts("  [#{person.class}] ID: #{person.id} Name: #{person.name} Age: #{person.age}") }
end
end