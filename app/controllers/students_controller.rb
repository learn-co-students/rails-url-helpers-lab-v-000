class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    if @student.active == false
      @status = 'This student is currently inactive.'
    else
      @status = 'This student is currently active.'
    end
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end
end