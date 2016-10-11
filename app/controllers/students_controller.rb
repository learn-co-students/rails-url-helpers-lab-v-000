class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  before_action :set_student_all, only: :index

  def index
  end

  def show
  end

  def activate
    if @student.active == false
      @student.active = true
    elsif @student.active == true
      @student.active = false
    end
    @student.save
    redirect_to student_path(@student)
  end

  private
    def set_student_all
      @students = Student.all
    end
    def set_student
      @student = Student.find(params[:id])
    end
end
