require_relative("../db/sql_runner.rb")

class House

  attr_reader :id, :house_name, :logo
  def initialize(params)
    @id = params['id'].to_i
    @house_name = params['house_name']
    @logo = params['logo']
  end

  def save()

    sql = "INSERT INTO houses (house_name, logo) VALUES ('#{@house_name}', '#{@logo}' ) RETURNING id;"
    house_data = SqlRunner.run(sql).first()
    @id = house_data['id'].to_i()

  end

  def House.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end

  #
  # def Student.all()
  #   sql ="SELECT * FROM students;"
  #   returned_array = SqlRunner.run(sql)
  #   students = returned_array.map {|student| Student.new(student)}
  #   return students
  # end
  #
  # def Student.find(id)
  #   sql = "SELECT * FROM students WHERE id = '#{id}';"
  #   returned_result = SqlRunner.run(sql)
  #   student = Student.new(returned_result.first)
  #   return student
  # end


end
