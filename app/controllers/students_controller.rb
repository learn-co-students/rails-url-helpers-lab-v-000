class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
    if set_student.active
      @message = "active"
    else
      @message = "inactive"
    end
  end

  def activate
    if set_student.active == true
      Student.update(params[:id], active: false)
    else
      Student.update(params[:id], active: true)
    end
    redirect_to student_path(set_student)
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
