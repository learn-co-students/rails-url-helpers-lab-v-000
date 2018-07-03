require "pry"

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
    if @student.active
      @status = "active"
    else
      @status = "inactive"
    end
  end

  def activate
    set_student
    if @student.active
      @student.active = false
    
    else
      #binding.pry
      @student.active = true
      #binding.pry
    end
    @student.save
      redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
