class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    if !@student.active
      @student.update(active: true)
    else
      @student.update(active: false)
    end
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
