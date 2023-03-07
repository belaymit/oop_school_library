require_relative './classes/person'
require_relative './decorators/capitalize_decorator'
require_relative './decorators/trimmer_decorator'

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
p capitalized_person.correct_name
trimmed_person = TrimmerDecorator.new(capitalizedPerson)
p trimmed_person.correct_name
