#Rewrite the each() method that prints all students using while or until
#control flow methods (Loops).

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit 'return' twice"
  students = []
  name = gets.chomp

  while !name.empty? do
    students.push({name: name, cohort: :november})
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end


def print_header
puts "The students of Villains Academy"
puts "-----------------"
end
def print(students)
  count = 0   # '.each' replaced with 'until' loop
  until students.count == count
    puts "#{count + 1}. #{students[count][:name]} (#{students[count][:cohort]} cohort)"
    count += 1
  end
end


def print_footer(students)
puts "Overall, we have #{students.count} great students "
end

students = input_students
print_header
print(students)
print_footer(students)
