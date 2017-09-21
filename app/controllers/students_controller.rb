require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def active
    @student = Student.find(params[:id])
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
    @student.save
   redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end