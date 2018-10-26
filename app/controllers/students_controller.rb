class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate_student
    @student = Student.find(params[:id])
    @student.active ? @student.update(active: false) : @student.update(active: true)
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end