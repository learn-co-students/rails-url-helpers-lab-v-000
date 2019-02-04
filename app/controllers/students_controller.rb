class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    # @student = Student.find_by(params[:id])
  end

  def activate
    # binding.pry
    # can also change this to set_student dfor the line below
    # @student = Student.find(params[:id])
    set_student
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end


  def activate
    set_student
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end


end
