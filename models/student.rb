require_relative('../db/sql_runner')
require_relative('./house.rb')

class Student

attr_reader :id, :first_name, :second_name, :house, :age


  def initialize(params)
    @id = params['id'].to_i()
    @first_name = params['first_name']
    @second_name = params['second_name']
    @house = params['house'].to_i()
    @age = params['age'].to_i()
  end


  def save()

    sql = "INSERT INTO students (first_name, second_name, house, age) VALUES ('#{@first_name}', '#{@second_name}', #{@house}, #{@age} ) RETURNING id;"
    student_data = SqlRunner.run(sql).first()
    @id = student_data['id'].to_i()

  end

  def Student.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql)
  end

  def house
    sql = "SELECT * FROM houses h INNER JOIN students s ON h.id = s.house WHERE s.id = #{@id};"
    returned_house = SqlRunner.run(sql).first
    house = House.new(returned_house)
    return house.house_name
  end

  def Student.all()
    sql ="SELECT * FROM students;"
    returned_array = SqlRunner.run(sql)
    students = returned_array.map {|student| Student.new(student)}
    return students
  end

  def Student.find(id)
    sql = "SELECT * FROM students WHERE id = '#{id}';"
    returned_result = SqlRunner.run(sql)
    student = Student.new(returned_result.first)
    return student
  end

end
