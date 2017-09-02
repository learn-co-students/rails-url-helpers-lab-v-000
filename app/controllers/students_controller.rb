class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    set_student
    @student.toggle(:active).save
    redirect_to student_path(@student) 
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

end