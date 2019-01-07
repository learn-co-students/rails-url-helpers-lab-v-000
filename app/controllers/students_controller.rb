class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    if @student.active == true
      @active = "active"
    else
      @active = "inactive"
    end
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
