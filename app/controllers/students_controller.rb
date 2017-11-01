class StudentsController < ApplicationController
  
  def index # implicitly render views/students/index.html.erb view file, which has the same name as #index method (action)
    @students = Student.all
  end

  def show # implicitly render the views/students/show.html.erb view file, which has same name as #show method (action)
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    @student.toggle!(:active) # @student instance's active attribute takes on the opposite boolean value, i.e., true becomes false / false becomes true. Changes are saved to database.
    redirect_to student_path(@student)
  end

end
