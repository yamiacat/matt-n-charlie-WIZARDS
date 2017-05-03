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


  def House.all()
    sql ="SELECT * FROM houses;"
    returned_array = SqlRunner.run(sql)
    houses = returned_array.map {|house| House.new(house)}
    return houses
  end

  def House.find(id)
    sql = "SELECT * FROM houses WHERE id = '#{id}';"
    returned_result = SqlRunner.run(sql)
    house = House.new(returned_result.first)
    return house
  end


end
