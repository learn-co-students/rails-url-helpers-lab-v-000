class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def active
    binding.pry
    @student = set_student
    if params[:activate] != nil
      @student.active = true
    else
      @student.active = false
    end
    @student.save
    redirect_to student_path(@student)
  end

  def activate
    # binding.pry
    @student = set_student
    if @student.active == true && params[:action] == "activate"
      @student.active = 0
    else
      @student.active = 1
    end





    # if params[:action] == "activate"
    #   @student.active = 1
    # else
    #   @student.active = 0
    # end
    @student.save
    redirect_to student_path(@student)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end
