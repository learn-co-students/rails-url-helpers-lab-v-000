require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show


  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    if @student.active #if student.active is true
      @message = "This student is currently active."
    else
      @message = "This student is currently inactive."
    end
  end

  def activate
    @student = Student.find(params[:id])
    @student.activate_student
    
    redirect_to student_path(@student)
  end

  def update
    #binding.pry
    @student = Student.find(params[:id])
    @student.update(active: params[:student][:active])
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
