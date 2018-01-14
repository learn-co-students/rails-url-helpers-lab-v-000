class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
    status
  end

  def activate
    set_student
    @student.active = !@student.active
    @student.save
    status
    redirect_to student_path(@student)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def status
    if @student.active
      @status = "active"
    else
      @status = "inactive"
    end
  end

end
