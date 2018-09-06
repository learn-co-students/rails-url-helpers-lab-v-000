require 'pry'
class StudentsController < ApplicationController
  #before_action :set_student, only: :show

  def index
    @students = Student.all

  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    #binding.pry
    @student = Student.find(params[:id])
    if @student.active == true
      @student.update(active: false)
    elsif @student.active == false
      @student.update(active: true)
    end
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      #binding.pry
      @student = Student.find(params[:id])
    end
end
