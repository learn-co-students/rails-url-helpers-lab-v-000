class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = set_student
    if @student.active == true
      @student.active = false
    elsif @student.active == false
      @student.active = true
    end
    @student.save
    redirect_to action: "show", id: params[:id]
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
