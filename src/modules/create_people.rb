module CreatePeople
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

  def create_student(age, name)
    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp.downcase
    case permission
    when :y
      parent_permission = true
    when :n
      parent_permission = false
      puts 'Invalid option'
    end
    print 'Classroom: (C1,C2): '
    classroom = gets.chomp

    student = Student.new(name, age, classroom, parent_permission: parent_permission)
    @people.push(student)
    puts 'Student has been created successfully!'
  end

  def create_teacher(age, name)
    print 'Specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(name, age, specialization)
    @people.push(teacher)
    puts 'Teacher hase been created successfully!'
  end
end
