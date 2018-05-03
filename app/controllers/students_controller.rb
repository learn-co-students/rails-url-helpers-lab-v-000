class StudentsController < ApplicationController

  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def active 
    @student = Student.find(params[:id])
    if @student.active == true
      flash[:notice] = "This student is currently active."
      # redirect_to @student
    else
      flash[:notice] = "This student is currently inactive."
      # redirect_to @student
    end
  end
end

  private

    def set_student
      @student = Student.find(params[:id])
    end

