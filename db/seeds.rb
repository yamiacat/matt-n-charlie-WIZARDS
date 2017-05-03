require("pry-byebug")
require_relative('../models/student.rb')


Student.delete_all()

student1 = Student.new({
  'first_name' => 'Harry',
  'second_name' => 'Potter',
  'house' => 'Gryffindor',
  'age' => 14
  })

student2 = Student.new({
  'first_name' => 'Draco',
  'second_name' => 'Malfoy',
  'house' => 'Slytherin',
  'age' => 14
})

student3 = Student.new({
  'first_name' => 'Luna',
  'second_name' => 'Lovegood',
  'house' => 'Ravenclaw',
  'age' => 13
})


student4 = Student.new({
  'first_name' => 'Cedric',
  'second_name' => 'Diggory',
  'house' => 'Hufflepuff',
  'age' => 17
})

student1.save()
student2.save()
student3.save()
student4.save()

binding.pry
nil
