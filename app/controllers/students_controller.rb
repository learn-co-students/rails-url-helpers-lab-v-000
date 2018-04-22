require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if params[:active] == "true"
      @student.active = true
      @student.save

      redirect_to student_path
    else
      @student.active = false
      @student.save

      redirect_to student_path
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
