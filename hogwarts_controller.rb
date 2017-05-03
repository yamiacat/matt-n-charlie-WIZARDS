require("sinatra")
require("sinatra/contrib/all")
require_relative("./models/student.rb")

# INDEX - READ (all)

get "/students" do
  @students = Student.all()
  erb(:index)
end


#NEW - CREATE (get form)
get "/students/new" do
  erb(:new)
end

#CREATE - CREATE (make something)

post "/students" do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

#SHOW - READ (one)



#EDIT UPDATE (get form)



#UPDATE UPDATE (make change)



#DESTROY DELETE
