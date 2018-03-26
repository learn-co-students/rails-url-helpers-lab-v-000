class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate_student_path
    @student = Student.find(param[:id])
    @status = @student.active
    if @status == false
      @student.active = true
    else
      @student.active = false
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
