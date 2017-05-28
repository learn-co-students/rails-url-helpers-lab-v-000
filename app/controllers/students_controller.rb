require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: :show
  before_action :activate_student, only: :activate

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def activate_student
      @student = Student.find(params[:id])
      @student.active = !@student.active
      @student.save
    end
end
