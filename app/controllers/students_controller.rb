class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
    #@student = Student.find(params[:id])
  end

  def activate
    if @student
      @student.active == false ? @student.active = true : @student.active = false
      @student.save
      redirect_to student_path(@student)
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
