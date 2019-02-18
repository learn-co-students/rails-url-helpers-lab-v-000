class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == false
      @student.active = true
      @student.save
      redirect_to student_path(@student)
    else
      @student.active = false
      @student.save
      redirect_to student_path(@student)
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
