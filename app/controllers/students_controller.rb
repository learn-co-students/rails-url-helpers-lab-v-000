class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    set_student
    if @student.active == false
      @student.active = true
      @student.save
    elsif
      @student.active == true
      @student.active = false
      @student.save
    end
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
