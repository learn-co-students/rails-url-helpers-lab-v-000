
class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
    if @student.active == true
      @student_status = 'active'
    else
      @student_status = 'inactive'
    end
    @student_status
  end

  def activate
    @student.toggle!(:active)
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
