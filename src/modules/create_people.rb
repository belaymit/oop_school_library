require_relative './permission'
module CreatePeople
  def persit_student(data)
    student_item = { 'type' => data['type'], 'name' => data['name'], 'age' => data['age'],
                     'parent_permission' => data['parent_permission'],
                     'classroom' => data['classroom'], 'id' => data['id'] }

    people = File.read('people.json')
    @people = JSON.parse(people)
    @people << student_item
    File.write('people.json', JSON.pretty_generate(@people))
  end

  def persist_teachers(type, name, specialization, age, id)
    teacher_data = { 'type' => type, 'name' => name, 'specialization' => specialization, 'age' => age, 'id' => id }
    teacher = File.read('people.json')
    @people = JSON.parse(teacher)
    @people << teacher_data
    File.write('people.json', JSON.pretty_generate(@people))
  end

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
    @people << student unless @people.include?(student)
    data = { 'type' => student.class.name, 'name' => name, 'age' => age,
             'parent_permission' => has_permission, 'classroom' => classroom,
             'id' => student.id }
    persit_student(data)
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
    @people << teacher unless @people.include?(teacher)
    persist_teachers(teacher.class.name, name, specialization, age, teacher.id)
    puts 'Teacher hase been created successfully!'
  end
end
