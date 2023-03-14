def permission?
  print 'Has parent permission [Y/N]: '
  permission = gets.chomp

  case permission
  when 'n', 'N'
    false
  when 'y', 'Y'
    true
  else
    puts "\nInvalid choice, please enter 'n'/'N' for False and 'y'/'N' for True"
  end
end