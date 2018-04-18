class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show

  end

  def active_status
    if set_student.active == false
      @active_status = "inactive"
    else
      @active_status = "active"
    end
    @active_status
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
