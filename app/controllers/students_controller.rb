class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = set_student
  end

  def activate
    student = set_student
    student_status=!student.active
    student.update(active: student_status)
    redirect_to "/students/#{student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
