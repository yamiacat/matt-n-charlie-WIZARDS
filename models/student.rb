require_relative('../db/sql_runner')

class Student

attr_reader :id, :first_name, :second_name, :house, :age


  def initialize(params)
    @id = params['id'].to_i
    @first_name = params['first_name']
    @second_name = params['second_name']
    @house = params['house']
    @age = params['age'].to_i
  end


  def save()

    sql = "INSERT INTO students (first_name, second_name, house, age) VALUES ('#{@first_name}', '#{@second_name}', '#{@house}', #{@age} ) RETURNING id;"
    student_data = SqlRunner.run(sql).first()
    @id = student_data['id'].to_i()

  end

  def Student.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql)
  end


end
