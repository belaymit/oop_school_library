require
def create_person
  # code to create a person (teacher or student)
  puts 'Create a person'
  print 'Do you want to create a Student (1) or a Teacher (2)?[Input a Number]: '
  person_type = gets.chomp.to_i
  if [1, 2].include? person_type
    print 'Name: '
    name = gets.chomp
    print 'Age: '
    age = gets.chomp.to_i
    case person_type
    when 1
      create_student(age, name)
    when 2
      create_teacher(age, name)
    end
  else
    puts 'Invalid'
  end
end