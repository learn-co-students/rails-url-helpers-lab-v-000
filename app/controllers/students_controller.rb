require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if params[:active]

      redirect_to student_path
    else
      @student.active = false
      binding.pry
      redirect_to student_path
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
