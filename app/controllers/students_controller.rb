class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    if @student.active == false
      @active = "inactive"
    else
      @active = "active"
    end
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == false
      @student.active = true
      @student.save
    else
      @student.active = false
      @student.save
    end
    redirect_to action: "show", id: params[:id]
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
