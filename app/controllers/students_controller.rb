class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show

  end

  def activate_student
    @student = Student.find(params[:id])
    if !@student.active
      @student.active = true
    else
      @student.active = false
    end
    @student.save
    redirect_to action: "show", id: @student.id
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
