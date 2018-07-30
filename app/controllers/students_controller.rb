class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = set_student
  end

  def activate_student
    @student = Student.find(params[:id])
    #@student.active = !@student.active (same thing as the if/else)
    if @student.active == false
      @student.active = true
    else
      @student.active = false
    end
    @student.save
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end