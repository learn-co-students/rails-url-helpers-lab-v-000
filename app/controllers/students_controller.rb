class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private
    # This Private Method below gives me my Find_student function.  Why doing it like this?

    def set_student
      @student = Student.find(params[:id])
    end
end
