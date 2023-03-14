require_relative './permission'
module CreatePeople

  def create_person
    puts 'Create a person'
    print 'Do you want to create a Student (1) or a Teacher (2)?[Input a Number]: '
    choice = gets.chomp.to_i
    case choice
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Invalid choice, input a number between [1-2]'
      create_person
    end
  end

  def create_student
    print 'Name: '
    name = gets.chomp
    
    print 'Age: '
    age = gets.chomp.to_i

    has_permission = permission?
    
    print 'Classroom: (C1,C2): '
    classroom = gets.chomp

    student = Student.new(name, age, classroom, parent_permission: has_permission)
    puts @people
    @people.push(student)
    # @people << student unless @people.include?(student)
    puts 'Student has been created successfully!'
  end

  def create_teacher
    print 'Name: '
    name = gets.chomp
    
    print 'Age: '
    age = gets.chomp.to_i

    print 'Specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(name, age, specialization)
    # @people.push(teacher)
    @people << teacher unless @people.include?(teacher)
    puts 'Teacher hase been created successfully!'
  end
end
