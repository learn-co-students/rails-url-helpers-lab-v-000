class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    student = Student.find(params[:id])
    if student.active
      student.status = 0
      student.save
    else
      student.status = 1
      student.save
    end
    redirect_to "/students/#{student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
