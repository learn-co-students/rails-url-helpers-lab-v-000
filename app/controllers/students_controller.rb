class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    set_student
    if @student.active == false
      @student.update_attribute(:active, true)
    else
      @student.update_attribute(:active, false)
    end
    redirect_to @user
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end