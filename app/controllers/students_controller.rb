class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    if @student.active
      @active = "active"
    else
      @active = "inactive"
    end
  end

  def active
    @student = Student.find(params[:id])
    if @student.active
      @student.update(active: false)
    else
      @student.update(active: true)
    end
    redirect_to action: "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
