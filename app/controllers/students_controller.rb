require "pry"

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
    binding.pry
    if @student.active
      @status = "active"
    else
      @status = "inactive"
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
