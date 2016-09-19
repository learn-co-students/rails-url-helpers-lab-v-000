class StudentsController < ApplicationController
  # --we can pass in an only option, selecting which of the seven RESTful routes we care about. In this case, we only care about the show action.

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)

  end


end
