require("sinatra")
require("sinatra/contrib/all")
require_relative("./models/student.rb")

# INDEX - READ (all)

get "/students" do
  @students = Student.all()
  erb(:index)
end


#NEW - CREATE (get form)


#CREATE - CREATE (make something)



#SHOW - READ (one)



#EDIT UPDATE (get form)



#UPDATE UPDATE (make change)



#DESTROY DELETE
