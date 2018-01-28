require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def activate
    binding.pry
    @student = Student.find(params[:id])
    @student.active = true
    redirect_to "#{student_show_path(@student)}"
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
