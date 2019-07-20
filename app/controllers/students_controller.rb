require 'pry' 
class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end


  
  def activate
    # binding.pry
    @student = Student.find(params[:id])
    @student.activate
    redirect_to student_path(@student)
  end
end
