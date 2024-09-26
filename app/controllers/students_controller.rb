class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    if @student.active
      @status = "active"
    else
      @status = "inactive"
    end
  end

  def activate_student
    student = Student.find(params[:id])
    if student.active == true
      student.active = false
      student.save
      redirect_to student
    else
      student.active = true
      student.save
      redirect_to student
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
