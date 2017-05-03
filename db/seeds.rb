require("pry-byebug")
require_relative('../models/student.rb')
require_relative('../models/house.rb')


Student.delete_all()
House.delete_all()



house1 = House.new({
  'house_name' => 'Gryffindor',
  'logo' => './public/gryffindor.jpg'
})

house2 = House.new({
  'house_name' => 'Slytherin',
  'logo' => './public/slytherin.jpg'
})

house3 = House.new({
  'house_name' => 'Ravenclaw',
  'logo' => './public/ravenclaw.jpg'
})

house4 = House.new({
  'house_name' => 'Hufflepuff',
  'logo' => './public/hufflepuff.jpg'
})

house1.save()
house2.save()
house3.save()
house4.save()



student1 = Student.new({
  'first_name' => 'Harry',
  'second_name' => 'Potter',
  'house' => house1.id,
  'age' => 14
  })

student2 = Student.new({
  'first_name' => 'Draco',
  'second_name' => 'Malfoy',
  'house' => house2.id,
  'age' => 14
})

student3 = Student.new({
  'first_name' => 'Luna',
  'second_name' => 'Lovegood',
  'house' => house3.id,
  'age' => 13
})


student4 = Student.new({
  'first_name' => 'Cedric',
  'second_name' => 'Diggory',
  'house' => house4.id,
  'age' => 17
})

student1.save()
student2.save()
student3.save()
student4.save()


binding.pry
nil
