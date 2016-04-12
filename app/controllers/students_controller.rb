class StudentsController < ApplicationController
  before_action :set_student, :check_status, only: [:show]

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == true
    @student.active = false
    else
    @student.active = true
    end
    @student.save

  redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def check_status
      if @student.active
        @status = "active"
      else
        @status = "inactive"
      end
    end
end
